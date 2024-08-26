Airport.destroy_all

Airport.create!([
  { airport_code: 'ATL' },
  { airport_code: 'JFK' },
  { airport_code: 'ORF' },
  { airport_code: 'LAX' }
])

p "Created #{Airport.count} airports."
