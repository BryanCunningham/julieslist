class User < ActiveRecord::Base
    validates :name, presence: true
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
    has_secure_password
    validates :password, confirmation: true
end
