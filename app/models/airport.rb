class Airport < ApplicationRecord
  validates :IATA, uniqueness: { case_sensitive: false }, length: { is: 3 }
  validates :IATA, :name, :city, :country, presence: true
end
