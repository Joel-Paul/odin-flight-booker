class Airport < ApplicationRecord
  validates :IATA, uniqueness: { case_sensitive: false }, length: { is: 3 }
  validates :IATA, :name, :city, :country, presence: true

  has_many :departing_flights, class_name: "Flight", foreign_key: "departure_airport", dependent: :destroy
  has_many :arriving_flights, class_name: "Flight", foreign_key: "arrival_airport", dependent: :destroy
end
