# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.delete_all
User.delete_all

user = User.create!(email: 'diegofischer14@gmail.com', password: '12345678')
book1 = Book.create!(title: 'Al encuentro de las Tres Marías', year: '2008', description: 'Nada fue como se contó. O casi nada. Una mujer hermosa y con talento que antes de cumplir los treinta años logró la fama y la gloria. Una mujer que en el ocaso de su vida decidió contemplar el mundo a través de los vidrios de una ventana. Hasta aquí la historia conocida de Juana de Ibarbourou, pero para completarla habría que hablar de una mujer inteligente y ambiciosa que supo siempre adónde quería llegar. Alguien que se enamoró más de una vez y vivió romances prohibidos. Una víctima de la violencia doméstica. ¿Una víctima de su hijo? ¿Una víctima de su entorno? Adicta a las drogas, la felicidad fue para ella un estado pasajero, que auguraba el dolor y la angustia que nunca la abandonaron. Y aun en el infierno de morfina, violencia y desamor en el que transcurrió la mayor parte de su vida, escribió versos magistrales y prosas memorables.', awards: 'Libro de Oro en 2009', user: user)

puts 'All done'
