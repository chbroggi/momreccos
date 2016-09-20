# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Club.destroy_all
Club.create!(name: "Amical St-Prex", short_name: "ASP", street: "Chemin de Marcy", zip_code: 1169 ,city: "St-Prex")

Team.destroy_all
Team.create! [
  {name: "D1", club: Club.find_by(name: "Amical St-Prex") },
  {name: "D2", club: Club.find_by(name: "Amical St-Prex") },
  {name: "D3", club: Club.find_by(name: "Amical St-Prex") },
  
  {name: "E1", club: Club.find_by(name: "Amical St-Prex") },
  {name: "E2", club: Club.find_by(name: "Amical St-Prex") },
  {name: "E3", club: Club.find_by(name: "Amical St-Prex") },
  {name: "E4", club: Club.find_by(name: "Amical St-Prex") }
]

Coach.destroy_all
Coach.create! [
  {first_name: "Daniel", last_name:"Salzman", phone:"078 000-0000", email:"my@email.ch", street:"", zip_code: 1169, city:"Yens", team: Team.find_by(name: "E1")},
  {first_name: "Manfred", last_name:"Elsig", phone:"078 000-0000", email:"myemail.ch", street:"", zip_code: 1169, city:"Yens",  team: Team.find_by(name: "D3")}
]


Parent.destroy_all
Parent.create!(last_name: "Broggi", mother_name: "Stéphanie", father_name: "Christophe", mother_phone: "076 615-6566", father_phone: "078 707-4360", mother_email: "steph@broggi.eu", father_email: "chris@broggi.eu", street:"Route de la Boironne 13", zip_code: 1169, city: "Yens", country: "Suisse")
Parent.create!(last_name: "Salzman", mother_name: "Ilene", father_name: "Daniel", mother_phone: "076 000-0000", father_phone: "078 000-0000", mother_email: "mother@family.com", father_email: "father@family.com", street:"Chemin de la Moraine 4", zip_code: 1169, city: "Yens", country: "Suisse")
Parent.create!(last_name: "Elsig", mother_name: "Kathleen", father_name: "Manfred", mother_phone: "076 000-0000", father_phone: "078 000-0000", mother_email: "mother@family.com", father_email: "father@family.com", street:"Chemin de Sus-Vellaz 29c", zip_code: 1169, city: "Yens", country: "Suisse")


Player.destroy_all
# Players of team E1
@team = Team.find_by(name: "E1")
Player.create! [
  {first_name: "Robby", passport_nb: "", parent: Parent.find_by(last_name: "Broggi", father_name: "Christophe"), team: @team},
  {first_name: "Mathis", passport_nb: "", parent: Parent.find_by(last_name: "Salzman", father_name: "Daniel"), team: @team}
]
#Players of team E3
Player.create!(first_name: "Marius", passport_nb: "", parent: Parent.find_by(last_name: "Broggi", father_name: "Christophe"), team: Team.find_by(name: "E3"))

