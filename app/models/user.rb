class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    # attr_accessor :name, :email
    validates :name, presence: true
    validates :email, presence: true,
              uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, length: { minimum: 6 }
end
