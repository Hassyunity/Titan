
class User < ApplicationRecord
  has_secure_password

  has_many :sessions

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def active?
    true
  end
end
