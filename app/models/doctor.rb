class Doctor < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :authentication_keys => [:phone]

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end

  def can_have_more?
    self.appointments.count - self.advices.count < 10
  end

  validates :phone, presence: true, length: { is: 10 }, uniqueness: true
  has_many :appointments
  has_many :advices
  belongs_to :profession
end
