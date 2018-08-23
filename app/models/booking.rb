class Booking < ApplicationRecord
  belongs_to :combi
  belongs_to :user

  enum status: { "Wait for confirmation" => 0, "Accepted" => 1, "Refused" => 2, "Finish" => 3 }
end
