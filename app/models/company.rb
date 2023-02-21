class Company < ApplicationRecord
    has_many :users 
    has_one :service
    has_many :bookings, through: :service
end
