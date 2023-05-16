#name:string 
#email:string 
#password_digest:string 
#games_per_day:integer
#
#password:string virtual
#password_confirmation:string virtual
class User < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
    validates :games_per_day, presence: true
end
