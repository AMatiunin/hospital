class User < ApplicationRecord
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

  validates :phone, presence: true, length: { is: 10 }, uniqueness: true
  validates :name, presence: true

end
