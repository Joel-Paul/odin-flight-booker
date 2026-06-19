# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Airport.delete_all
Airport.create!([
  {
    IATA: "ADL",
    name: "Adelaide Airport",
    city: "Adelaide",
    country: "Australia"
  },
  {
    IATA: "BNE",
    name: "Brisbane Airport",
    city: "Brisbane",
    country: "Australia"
  },
  {
    IATA: "BME",
    name: "Broome International Airport",
    city: "Broome",
    country: "Australia"
  },
  {
    IATA: "CNS",
    name: "Cairns Airport",
    city: "Cairns",
    country: "Australia"
  },
  {
    IATA: "CBR",
    name: "Canberra Airport",
    city: "Canberra",
    country: "Australia"
  },
  {
    IATA: "DRW",
    name: "Darwin International Airport",
    city: "Darwin",
    country: "Australia"
  },
  {
    IATA: "OOL",
    name: "Gold Coast Airport",
    city: "Gold Coast",
    country: "Australia"
  },
  {
    IATA: "HBA",
    name: "Hobart Airport",
    city: "Hobart",
    country: "Australia"
  },
  {
    IATA: "HID",
    name: "Horn Island Airport",
    city: "Horn Island",
    country: "Australia"
  },
  {
    IATA: "MEL",
    name: "Melbourne Airport",
    city: "Melbourne",
    country: "Australia"
  },
  {
    IATA: "NTL",
    name: "Newcastle Airport",
    city: "Newcastle",
    country: "Australia"
  },
  {
    IATA: "PER",
    name: "Perth Airport",
    city: "Perth",
    country: "Australia"
  },
  {
    IATA: "MCY",
    name: "Sunshine Coast Airport",
    city: "Sunshine Coast",
    country: "Australia"
  },
  {
    IATA: "SYD",
    name: "Sydney Airport",
    city: "Sydney",
    country: "Australia"
  }
])

Flight.delete_all
Flight.create!([
  {
    departure_airport: Airport.find_by(IATA: "ADL"),
    arrival_airport: Airport.find_by(IATA: "SYD"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 2)
  },
  {
    departure_airport: Airport.find_by(IATA: "SYD"),
    arrival_airport: Airport.find_by(IATA: "OOL"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 1, minutes: 20)
  },
  {
    departure_airport: Airport.find_by(IATA: "OOL"),
    arrival_airport: Airport.find_by(IATA: "DRW"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 8)
  },
  {
    departure_airport: Airport.find_by(IATA: "DRW"),
    arrival_airport: Airport.find_by(IATA: "MEL"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 4)
  },
  {
    departure_airport: Airport.find_by(IATA: "MEL"),
    arrival_airport: Airport.find_by(IATA: "HBA"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 1, minutes: 20)
  },
  {
    departure_airport: Airport.find_by(IATA: "HBA"),
    arrival_airport: Airport.find_by(IATA: "MCY"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 3)
  },
  {
    departure_airport: Airport.find_by(IATA: "MCY"),
    arrival_airport: Airport.find_by(IATA: "BNE"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 3)
  },
  {
    departure_airport: Airport.find_by(IATA: "BNE"),
    arrival_airport: Airport.find_by(IATA: "BME"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 8)
  },
  {
    departure_airport: Airport.find_by(IATA: "BME"),
    arrival_airport: Airport.find_by(IATA: "CNS"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 10)
  },
  {
    departure_airport: Airport.find_by(IATA: "CNS"),
    arrival_airport: Airport.find_by(IATA: "CBR"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 4)
  },
  {
    departure_airport: Airport.find_by(IATA: "CBR"),
    arrival_airport: Airport.find_by(IATA: "HID"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 6)
  },
  {
    departure_airport: Airport.find_by(IATA: "HID"),
    arrival_airport: Airport.find_by(IATA: "NTL"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 7)
  },
  {
    departure_airport: Airport.find_by(IATA: "NTL"),
    arrival_airport: Airport.find_by(IATA: "PER"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 6)
  },
  {
    departure_airport: Airport.find_by(IATA: "PER"),
    arrival_airport: Airport.find_by(IATA: "ADL"),
    takeoff: DateTime.current,
    landing: DateTime.current.advance(hours: 3)
  }
])
