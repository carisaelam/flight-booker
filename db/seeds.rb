Airport.destroy_all

Airport.create!([
  { airport_code: 'ATL' },
  { airport_code: 'JFK' },
  { airport_code: 'ORF' },
  { airport_code: 'LAX' }
])

p "Created #{Airport.count} airports."


Flight.destroy_all

Flight.create!([
  {
    departure_airport: Airport.first,
    arrival_airport: Airport.find(2),
    start_date_time: DateTime.now,
    flight_duration: 120
  },
  {
    departure_airport: Airport.find(2),
    arrival_airport: Airport.find(3),
    start_date_time: DateTime.now,
    flight_duration: 180
  },
  {
    departure_airport: Airport.find(3),
    arrival_airport: Airport.find(4),
    start_date_time: DateTime.now,
    flight_duration: 300
  },
  {
    departure_airport: Airport.find(2),
    arrival_airport: Airport.find(1),
    start_date_time: DateTime.now,
    flight_duration: 300
  }
])


p "Created #{Flight.count} flights."
