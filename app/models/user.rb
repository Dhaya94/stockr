class User < ApplicationRecord
    has_secure_password    
    validates :password, length: { in: 6..20 }
    validates :email, :presence => true, :uniqueness => true
    has_many :watchlists
end