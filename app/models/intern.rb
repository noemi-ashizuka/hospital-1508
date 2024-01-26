class Intern < ActiveRecord::Base
  belongs_to :doctor
end

# intern_instance.doctor => a doctor instance
