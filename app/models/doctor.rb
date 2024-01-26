class Doctor < ActiveRecord::Base
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :last_name, uniqueness: { scope: :first_name }
end

# doctor_instance.interns => array of intern instances
