# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.delete_all
User.delete_all

puts 'Cleaning up'

user = User.create!(email: 'diegofischer14@gmail.com', password: '12345678')
# book1 = Book.create!(title:, year:, description:, awards:, user: user)
# book1_cover = open('../app/assets/images/Book_Covers/name')
# book1_cover.photo.attach(io: lala. filename: 'image.jpg')

book1 = Book.create!(
  title: 'Al este de la historia',
  year: '1998',
  description:'¿Qué tienen en común Antonio Lussich, Adolfo Bioy Casares, Rafael Alberti, Amalia Lacroze de Fortabat y Luis Alberto de Herrera? ¿Qué une a Vinicius de Moraes, Leonor Uriburu de Anchorena, Astor Piazzolla, Silvina Bullrick, Julio Argentino Roca y Eduardo Víctor Haedo?
    Todos Ellos llegaron un día a un paraíso intocado y casi salvaje: Punta del Este. Todos ellos se enamoraron de un lugar distinto del que conocemos hoy. Todos ellos hicieron suya esa cadena interminable de playas y bosques.
    Todos ellos vivieron allí una historia de las que se guardan en un cajón y que se recuerdan ingenuamente al tomar una piedra y lanzarla al mar.
    Al este de la historia explora lo que cada uno de estos personajes soñó cuando vio cómo esa piedra se hundía en el mar: el rostro de alguien a quien se amó, un deseo inconfesable, un sueño de poder...',
  awards: '',
  user: user)
book1.photo.attach(io: File.open('app/assets/images/Book_Covers/al_este_1.jpg'), filename: 'image.jpg')

book2 = Book.create!(
  title: 'Al este de la historia 2',
  year: '2000',
  description:'Libro donde se explora en la vida de nueve personajes, nueve relatos, historias de vida que son también parte de la historia de Punta del Este. Entre ellos hay políticos, actores, artistas, empresarios, músicos, escritores. Todos con algo en común, que es el sitio que eligieron ya sea como refugio, sitio de descanso o como fuente de inspiración creadora. Entre fotos y anécdotas se encuentran entre otras personalidades: Wilson Ferreira Aldunate, Alfonsina Storni, Margarita Xirgú. Constituye éste un segundo tomo, el primer tomo titulado "Al este de la historia"de notable éxito editorial obtuvo además la primera mención en el Premio Anual de Literatura 1998 otorgado por el Ministerio de Educación y Cultura.',
  awards: '',
  user: user)
book2.photo.attach(io: File.open('app/assets/images/Book_Covers/al_este_2.jpg'), filename: 'image.jpg')

book3 = Book.create!(
  title: 'Que nos abrace el viento',
  year: '2004',
  description:'Se enfrentaron luego infinidad de veces en el mar. Lussich era un poeta consagrado que se dedicó después a disputarle vidas al Río de la Plata y al Atlántico, mientras creaba la empresa marítima más importante de América del Sur. Marcó el ritmo de sus días, pero también le dio la oportunidad de soñar y concretar sus sueños.
    Hasta que por fin llegaron a un acuerdo. Cuando Lussich, en la última etapa de su vida, emprendió su más ambiciosa empresa: la siembra de Punta Ballena, el viento se serenó y se transformó en su aliado.
  Que nos abrace el viento es la historia y la leyenda de Antonio Lussich. Pero también es la historia de cientos de criollos generosos que construyeron un país para las generaciones futuras, vinieran de donde vinieran.',
  awards: '',
  user: user)
book3.photo.attach(io: File.open('app/assets/images/Book_Covers/que_nos_abrace_el_viento.jpg'), filename: 'image.jpg')



# book1 = Book.create!(title: 'Al encuentro de las Tres Marías', year: '2008', description: 'Nada fue como se contó. O casi nada. Una mujer hermosa y con talento que antes de cumplir los treinta años logró la fama y la gloria. Una mujer que en el ocaso de su vida decidió contemplar el mundo a través de los vidrios de una ventana. Hasta aquí la historia conocida de Juana de Ibarbourou, pero para completarla habría que hablar de una mujer inteligente y ambiciosa que supo siempre adónde quería llegar. Alguien que se enamoró más de una vez y vivió romances prohibidos. Una víctima de la violencia doméstica. ¿Una víctima de su hijo? ¿Una víctima de su entorno? Adicta a las drogas, la felicidad fue para ella un estado pasajero, que auguraba el dolor y la angustia que nunca la abandonaron. Y aun en el infierno de morfina, violencia y desamor en el que transcurrió la mayor parte de su vida, escribió versos magistrales y prosas memorables.', awards: 'Libro de Oro en 2009', user: user)

puts 'All done'
