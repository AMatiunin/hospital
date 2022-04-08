class Advice < ApplicationRecord
  belongs_to :doctor
  validates :appointment_id, presence: true
  validates :body, presence: true
end
