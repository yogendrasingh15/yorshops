class Patient < ApplicationRecord
	belongs_to :doctor
	belongs_to :appointment
end
