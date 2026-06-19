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
