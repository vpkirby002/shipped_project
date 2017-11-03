# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Region.create([
	{id: 1, name: "Canada"},
	{id: 2, name: "United States"},
	{id: 3, name: "Central America"},
	{id: 4, name: "South America"},
	
])

Location.create([
	# Canada
	{id: 1, location_name: 'Port of Ketchikan', region_id: 1},
	{id: 2, location_name: 'Port of Tuktoyaruk', region_id: 1},
	{id: 3, location_name: 'Port of Nanisivik', region_id: 1},
	{id: 4, location_name: 'Port of St Anthony', region_id: 1},
	{id: 5, location_name: 'Port of Victoria', region_id: 1},
	{id: 6, location_name: 'Port of Iqaluit', region_id: 1},
	{id: 7, location_name: 'Port of Churchill', region_id: 1},
	{id: 8, location_name: 'Port of Ocean Falls', region_id: 1},
	{id: 9, location_name: 'Port of Ocean Falls', region_id: 1},
	{id: 10, location_name: 'Port of Ocean Falls', region_id: 1},

	# United States
	{id: 11, location_name: 'Port of Long Beach', region_id: 2},
	{id: 12, location_name: 'Port of Los Angeles', region_id: 2},
	{id: 13, location_name: 'Port of Orlando', region_id: 2},
	{id: 14, location_name: 'Port of Seattle', region_id: 2},
	{id: 15, location_name: 'Port of Pearl Harbor', region_id: 2},
	{id: 16, location_name: 'Port of Kotzebue', region_id: 2},
	{id: 17, location_name: 'Port of Crescent City', region_id: 2},
	{id: 18, location_name: 'Eastport Maine Usa', region_id: 2},
	{id: 19, location_name: 'Port of Yorktown', region_id: 2},
	{id: 20, location_name: 'Port of Port St Joe', region_id: 2},

	# Central America
	{id: 21, location_name: 'Port of Tampico', region_id: 3},
	{id: 22, location_name: 'Port of La Cieba', region_id: 3},
	{id: 23, location_name: 'Port of Puerto Plata', region_id: 3},
	{id: 24, location_name: 'Port of Chiriqui Grande', region_id: 3},
	{id: 25, location_name: 'Port of Chichiriviche', region_id: 3},
	{id: 26, location_name: 'Port of Aguadulce', region_id: 3},
	{id: 27, location_name: 'Port of Puerto Cabezas', region_id: 3},
	{id: 28, location_name: 'Port of Champerico', region_id: 3},
	{id: 29, location_name: 'Port of Morro Redondo', region_id: 3},
	{id: 30, location_name: 'Port of Salina Cruz', region_id: 3},


	# South America
	{id: 31, location_name: 'Port of Porto-Ilha', region_id: 4},
	{id: 32, location_name: 'Port of Laguna', region_id: 4},
	{id: 33, location_name: 'Port of Huasco', region_id: 4},
	{id: 34, location_name: 'Port of Isla Guarello', region_id: 4},
	{id: 35, location_name: 'Port Rio Gallegos', region_id: 4},
	{id: 36, location_name: 'Port of Punta del Este', region_id: 4},
	{id: 37, location_name: 'Port of Rio Grande', region_id: 4},
	{id: 38, location_name: 'Port of Santa Fe', region_id: 4},
	{id: 39, location_name: 'Port of Vitoria', region_id: 4},
	{id: 40, location_name: 'Port Itaqui', region_id: 4},
])

User.create([
	{id: 1, fname: 'Test', lname: 'Test', companyname: 'Testing Inc.', email: 'testing@gmail.com', password: '123456', photo: open('http://cdn.history.com/sites/2/2015/03/hungry-history-the-halloween-pumpkin-an-american-history-E.jpeg')}
])
Boat.create!([
	{id: 1, bname: 'Titanic', capacity: '100', current_location_id: 1, user_id: 1, region_id: 2}
])
Job.create!([
	{id: 1, jname: 'test', description: 'Shipping 50 New 2018 Hondas (CL212936432) #2321846322233', containers: '50', cost: '10000', origin_id: 1, destination_id: 2}
])
BoatJob.create!([
	{id: 1, boat_id: 1, job_id: 1}
])

