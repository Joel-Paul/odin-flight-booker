class Flight < ApplicationRecord
  validates :departure_airport, :arrival_airport, :takeoff, :landing, presence: true
  validates :landing, comparison: { greater_than: :takeoff }

  belongs_to :departure_airport, class_name: "Airport"
  belongs_to :arrival_airport, class_name: "Airport"

  default_scope { order(takeoff: :asc) }
  scope :departing_from, ->(code) { where("departure_airport_id = ?", Airport.find_by(IATA: code).id) if code.present? }
  scope :arriving_to, ->(code) { where("arrival_airport_id = ?", Airport.find_by(IATA: code).id) if code.present? }
  scope :between, ->(from, to) { departing_from(from).arriving_to(to) }
  scope :departing_on, ->(date) { where("DATE(takeoff) = ?", date) if date }
end
