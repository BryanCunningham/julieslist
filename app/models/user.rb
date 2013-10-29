require "securerandom"
class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    before_create :create_remember_token
    validates :first_name, :last_name, presence: true
    validates :email, presence: true,
              uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, length: { minimum: 6 }
    has_many :plans
    has_many :ideas, through: :plans


  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
