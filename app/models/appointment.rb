class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  has_one :advice
  validates :date, presence: true
end
