class Combi < ApplicationRecord
  has_many :bookings
  belongs_to :user
end
