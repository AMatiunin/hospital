class Appointment < ApplicationRecord
  has_many :advices
  belongs_to :user
  belongs_to :doctor
end
