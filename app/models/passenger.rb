class Passenger < ApplicationRecord
    has_many :tickets, dependent: :destroy
    has_many :airports, through: :tickets
    validates :name, uniqueness: true
    validates :age, numericality: {less_than_or_equal_to: 80}
end
