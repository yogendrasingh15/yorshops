class Doctor < ApplicationRecord
	has_many :doctor
	has_many :appointment
end
