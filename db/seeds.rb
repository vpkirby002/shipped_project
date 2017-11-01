# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([
	{id: 1, fname: 'Valerie', lname: 'Kirby', companyname: 'Valerie Inc.', email: 'vpkirby002@gmail.com', password: '123456', photo: open('http://cdn.history.com/sites/2/2015/03/hungry-history-the-halloween-pumpkin-an-american-history-E.jpeg')}
])
Boat.create([
	{id: 1, bname: 'Titanic', capacity: '100', current_location: 'Port of Long Beach', user_id: '1'}
])
Job.create([
	{id: 1, description: '100 Cars', origin: 'Port of Los Angeles', destination: 'Port of Seattle-Tacoma', containers: '50', cost: '100,000'}
])
BoatJob.create([
	{id: 1, boat_id: 1, job_id: 1}
])