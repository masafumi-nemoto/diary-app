class User < ApplicationRecord
    validates :email, uniqueness: true

    validates :name, presence: true
    validates :email, presence: true

    validates :password_confirmation, presence: true
    
    has_secure_password
end
