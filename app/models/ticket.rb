class Ticket < ApplicationRecord
  belongs_to :airport
  belongs_to :passenger
  validates :price, numericality: {less_than_or_equal_to: 1000} 
  validates_presence_of :passenger_id, :airport_id
end
