class User < ActiveRecord::Base
  has_many :posts

  has_secure_password
  before_validation :secure_password_digest
  validates :email, presence: true

  def secure_password_digest
    self.password = SecureRandom.urlsafe_base64(16) if password_digest.blank?
  end
end
