class Flight < ApplicationRecord
  validates :departure_airport, :arrival_airport, :takeoff, :landing, presence: true
  validates :landing, comparison: { greater_than: :takeoff }

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  default_scope { order(takeoff: :asc) }
end
