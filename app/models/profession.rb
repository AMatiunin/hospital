class Profession < ApplicationRecord
  has_many :doctors

  validates :name, uniqueness: true, presence: true
end
