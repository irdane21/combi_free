class Booking < ApplicationRecord
  belongs_to :combi
  belongs_to :user
end
