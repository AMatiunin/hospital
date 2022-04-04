class Profession < ApplicationRecord
  has_many :doctors

  validates :name, uniqueness: true
end
