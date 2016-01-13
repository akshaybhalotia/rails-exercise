# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flight.delete_all
Flight.create(from: 'A',
to: 'B',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 1000.00
)
Flight.create(from: 'A',
to: 'C',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 2000.00
)
Flight.create(from: 'B',
to: 'A',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 3000.00
)
Flight.create(from: 'B',
to: 'C',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 4000.00
)
Flight.create(from: 'C',
to: 'A',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 5000.00
)
Flight.create(from: 'C',
to: 'B',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 AM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 AM", "%I:%M %p"),
price: 6000.00
)
Flight.create(from: 'A',
to: 'B',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 7000.00
)
Flight.create(from: 'A',
to: 'C',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 8000.00
)
Flight.create(from: 'B',
to: 'A',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 9000.00
)
Flight.create(from: 'B',
to: 'C',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 10000.00
)
Flight.create(from: 'C',
to: 'A',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 11000.00
)
Flight.create(from: 'C',
to: 'B',
date_of_journey: Date.strptime("13/01/2016", "%d/%m/%Y"),
dep_time: DateTime.strptime("06:00 PM", "%I:%M %p"),
arr_time: DateTime.strptime("08:00 PM", "%I:%M %p"),
price: 12000.00
)
