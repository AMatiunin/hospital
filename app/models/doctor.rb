class Doctor < ApplicationRecord
  LIMIT_OF_APPOINTMENTS = 10

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
    self.appointments.count - self.advices.count <= LIMIT_OF_APPOINTMENTS
  end

  validates :phone, presence: true, length: { is: 10 }, uniqueness: true
  validates :name, presence: true
  has_many :appointments
  has_many :advices
  belongs_to :profession
end
