# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.delete_all
Project.delete_all
Post.delete_all
Slide.delete_all
User.delete_all

puts 'Cleaning up...'

puts 'Creating user...'

user = User.create!(email: ENV['MAIL'], password: ENV['PASSWORD'])


puts 'Creating books...'

book1 = Book.create!(
  title: 'Al este de la historia',
  year: '1998',
  description:'<p>¿Qué tienen en común Antonio Lussich, Adolfo Bioy Casares, Rafael Alberti, Amalia Lacroze de Fortabat y Luis Alberto de Herrera? ¿Qué une a Vinicius de Moraes, Leonor Uriburu de Anchorena, Astor Piazzolla, Silvina Bullrick, Julio Argentino Roca y Eduardo Víctor Haedo?</p>
    <p>Todos Ellos llegaron un día a un paraíso intocado y casi salvaje: Punta del Este. Todos ellos se enamoraron de un lugar distinto del que conocemos hoy. Todos ellos hicieron suya esa cadena interminable de playas y bosques.</p>
    <p>Todos ellos vivieron allí una historia de las que se guardan en un cajón y que se recuerdan ingenuamente al tomar una piedra y lanzarla al mar.</p>
    <p>Al este de la historia explora lo que cada uno de estos personajes soñó cuando vio cómo esa piedra se hundía en el mar: el rostro de alguien a quien se amó, un deseo inconfesable, un sueño de poder...</p>',
  awards: '',
  user: user)
book1.photo.attach(io: File.open('app/assets/images/Book_Covers/al_este_1.jpg'), filename: 'image.jpg')
book1.cover.attach(io: File.open('app/assets/images/Portadas/Al_este_de_la_historia_1.jpg'), filename: 'image.jpg')

book2 = Book.create!(
  title: 'Al este de la historia',
  subtitle: 'Un abrazo entre el ayer y el hoy',
  year: '2000',
  description:'<p>¿Por qué Wilson Ferreira Aldunate, Arturo Frondizi, María Luisa Bemberg y Juan Máximo Gorlero vivieron en Punta del Este los momentos más felices y dramáticos de sus vidas?</p>
  <p>¿Qué encontraron en ese balneario, entonces casi virgen, la familia Behren, Alfonsina Storni y Margarita Xirgú?</p>
  <p>¿Qué pasiones despertó en Carlos Páez Vilaró y Daniel Rabinovich esa cadena interminable de playas con arenas blanquísimas bañadas por un río que se confunde en un abrazo con el mar?</p>
  <p>Todos ellos desembarcaron en la península en diferentes épocas y circunstancias. Todos ellos fueron hechizados por sus rojos atardeceres mientras expresaban un deseo. Todos ellos llegaron un día para quedarse...</p>
  <p><i>Al este de la historia: Un abrazo entre el ayer y el hoy</i> intenta hurgar en las huellas que estos personajes dejaron. Personalidades muy distintas y distantes entre sí, es cierto, pero que escribieron la historia menos conocida y más entrañable del balneario: la cotidiana. Algunas también protagonizaron hechos que pudieron haber cambiado el rumbo de este continente. Otros siguen soñando sus más hermosos sueños entre el mar y las sierras, como la primera vez, cuando descubrieron ese paraíso en territorio oriental.</p>',
  awards: '',
  user: user)
book2.photo.attach(io: File.open('app/assets/images/Book_Covers/al_este_2.jpg'), filename: 'image.jpg')
book2.cover.attach(io: File.open('app/assets/images/Portadas/Al_este_de_la_historia_2.jpg'), filename: 'image.jpg')

book3 = Book.create!(
  title: 'Que nos abrace el viento',
  subtitle: 'Historia y leyenda de Antonio Lussich',
  year: '2004',
  description:'<p>Se enfrentaron luego infinidad de veces en el mar. Lussich era un poeta consagrado que se dedicó después a disputarle vidas al Río de la Plata y al Atlántico, mientras creaba la empresa marítima más importante de América del Sur. Marcó el ritmo de sus días, pero también le dio la oportunidad de soñar y concretar sus sueños.</p>
    <p>Hasta que por fin llegaron a un acuerdo. Cuando Lussich, en la última etapa de su vida, emprendió su más ambiciosa empresa: la siembra de Punta Ballena, el viento se serenó y se transformó en su aliado.</p>
    <p>Que nos abrace el viento es la historia y la leyenda de Antonio Lussich. Pero también es la historia de cientos de criollos generosos que construyeron un país para las generaciones futuras, vinieran de donde vinieran.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160283-que-nos-abrace-el-viento-9789974713468',
  user: user)
book3.photo.attach(io: File.open('app/assets/images/Book_Covers/que_nos_abrace_el_viento.jpg'), filename: 'image.jpg')
book3.cover.attach(io: File.open('app/assets/images/Portadas/Que_nos_abrace_el_viento_2.jpg'), filename: 'image.jpg')


book4 = Book.create!(
  title: 'Al este de la historia',
  subtitle: '100 años de Punta del Este',
  year: '2006',
  description: '<p>Punta del Este está de fiesta. Es que en julio de 2007 el balneario cumple un siglo de vida y resulta más que oportuno reeditar <i>Al este de la historia</i> en un volumen especial al que se le ha incorporado un nuevo personaje y más fotografías con el valor agregado de doce óleos del pintor uruguayo Adolfo Sayago especialmente hechos para esta edición.</p>
  <p>En estas páginas con olor a océano y bosque el lector se encontrará con Adolfo Bioy Casares, Vinicius de Moraes, Astor Piazzolla, Antonio Lussich, Leonor Uriburu de Anchorena, Rafael Alberti, Luis Alberto de Herrera, Juan Máximo Gorlero, Silvina Bullrich, Eduardo Víctor Haedo, los Behrens, María Luisa Bemberg, Arturo Frondizi, Wilson Ferreira Aldunate, Daniel Rabinovich, Amalia Lacroze de Fortabat, Carlos Páez Vilaró y Carlos Pedro Blaquier. Todos personajes que tienen muchas cosas en común. Pero quizás el rasgo que más los une es que alguna vez tomaron una piedra, la lanzaron lejos y miraron cómo se hundía en el mar mientras formulaban un sueño. Este libro busca esa piedra. Y ese sueño. ¡Por otros cien años! Que así sea. </p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160280-al-este-de-la-historia-9789974713451',
  user: user)
book4.photo.attach(io: File.open('app/assets/images/Book_Covers/Al Este de la Historia 3.jpg'), filename: 'image.jpg')
book4.cover.attach(io: File.open('app/assets/images/Portadas/Al_este_de_la_historia_3.jpg'), filename: 'image.jpg')


book5 = Book.create!(
  title: 'Al encuentro de las Tres Marías',
  subtitle: 'Juana de Ibarbourou más allá del mito',
  year: '2008',
  description: '<p>Nada fue como se contó. O casi nada. Una mujer hermosa y con talento que antes de cumplir los treinta años logró la fama y la gloria. Una mujer que en el ocaso de su vida decidió contemplar el mundo a través de los vidrios de una ventana. Hasta aquí la historia conocida de Juana de Ibarbourou, pero para completarla habría que hablar de una mujer inteligente y ambiciosa que supo siempre adónde quería llegar. Alguien que se enamoró más de una vez y vivió romances prohibidos. Una víctima de la violencia doméstica. ¿Una víctima de su hijo? ¿Una víctima de su entorno? Adicta a las drogas, la felicidad fue para ella un estado pasajero, que auguraba el dolor y la angustia que nunca la abandonaron. Y aun en el infierno de morfina, violencia y desamor en el que transcurrió la mayor parte de su vida, escribió versos magistrales y prosas memorables.</p>',
  awards: 'Libro de Oro en 2009',
  booktrailer: 'https://www.youtube.com/watch?v=ZNF_J_qu0Cg',
  link: 'https://www.penguinlibros.com/uy/biografias/160091-al-encuentro-de-las-tres-marias-9789974701625',
  user: user)
book5.photo.attach(io: File.open('app/assets/images/Book_Covers/Al encuentro de las tres marías.jpg'), filename: 'image.jpg')
book5.cover.attach(io: File.open('app/assets/images/Portadas/al_encuentro_de_las_tres_marias.jpg'), filename: 'image.jpg')

book6 = Book.create!(
  title: 'Qué tupé',
  subtitle: 'Batlle-Beltrán, ¿duelo o asesinato?',
  year: '2010',
  description: '<p>La muerte del diputado blanco Washington Beltrán en un duelo a pistola conmovió al Uruguay de 1920. Su contrincante no fue otro sino el ex presidente José Batlle y Ordóñez. Probablemente este duelo haya establecido una diferencia definitiva entre dos visiones de país y dos maneras de entender y ejercer la democracia.</p>
<p>Hace 90 años el Uruguay se conmovió con la muerte del diputado blanco Washington Beltrán en un duelo a pistola. Su contrincante en el lance fue el dos veces ex presidente de la República José Batlle y Ordóñez. ¿Cuánto hay de cierto en lo que nos ha llegado por tradición oral sobre ese duelo? ¿Por qué las familias Batlle y Beltrán guardaron siempre un hermético silencio acerca del episodio? ¿Por qué adoptaron la misma actitud los testigos del hecho que tiñó de sangre el Viernes Santo de 1920? La historia ha sido trasmitida de generación en generación, pero no existe un libro que haya abordado el tema en profundidad. ¿Qué intereses movían a Batlle? ¿Qué representaba Beltrán para el Partido Nacional? ¿Era el Uruguay de entonces un país verdaderamente democrático? Qué tupé es una investigación periodística en la que por primera vez salen a la luz documentos de extraordinario valor histórico, que retratan a una sociedad hipócrita, en la que los dirigentes políticos actuaban como en una logia secreta. El duelo entre Batlle y Beltrán fue quizás el episodio que marcó definitivamente dos visiones diferentes de país de las divisas tradicionales y dos maneras distintas de entender y ejercer la democracia. Con pinceladas de novela, Qué tupé es también una historia de amor. De un amor inclaudicable aun después de la muerte, capaz de desafiar las fronteras de la entrega y el perdón.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160286-que-tupe-9789974713475',
  user: user)
book6.photo.attach(io: File.open('app/assets/images/Book_Covers/Que tupe.jpg'), filename: 'image.jpg')
book6.cover.attach(io: File.open('app/assets/images/Portadas/que_tupe.jpg'), filename: 'image.jpg')


book7 = Book.create!(
  title: 'Hasta donde me lleve la vida',
  subtitle: 'Carlos Páez Vilaró',
  year: '2011',
  description: '<p>Carlos Páez Vilaró. Hasta donde me lleve la vida es la biografía novelada del legendario artista, escrita por Diego Fischer. Recogiendo su propia voz y la de aquellos que lo conocen bien, y analizando documentos y cartas inéditos, el autor accede a lugares todavía reservados de la geografía de Páez. A 60 años de su primer lienzo, este libro desgrana las conquistas y los desvelos del popular constructor de sueños.</p>
  <p>En su juventud Páez Vilaró intuyó que el mundo era pequeño y merecía ser recorrido; decidió explorarlo. Hizo sus primeros garabatos en la plaza de Mayo de Buenos Aires cuando Perón llegaba por primera vez al poder. Encontró al candombe en los óleos de Pedro Figari y en las comparsas del barrio Sur de Montevideo. Cuando el 1 de noviembre de 1957 pisó por primera vez el lomo de la Ballena, imaginó su arte comulgando con la naturaleza y allí mismo se puso a tejer su sueño y su propia leyenda. Esculpió Casapueblo.</p>
  <p>Hoy, con 87 años, continúa asomándose a ese paisaje que no se concibe sin él. Sus anhelos, sus proezas, sus rarezas han atravesado mares y océanos. Como toda gran aventura, su vida tiene luces y sombras. Con pinceladas cuidadosamente escogidas, Diego Fischer aborda las claves de su esencia seductora y transgresora.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160783-carlos-paez-vilaro-9789974736467',
  user: user)
book7.photo.attach(io: File.open('app/assets/images/Book_Covers/Hasta donde me lleve la vida.jpg'), filename: 'image.jpg')
book7.cover.attach(io: File.open('app/assets/images/Portadas/hasta_donde_me_lleve_la_vida.jpg'), filename: 'image.jpg')

book8 = Book.create!(
  title: 'A mí me aplauden',
  subtitle: 'Las historias que China no contó',
  year: '2012',
  description: '<p>A mí me aplauden es una mirada reveladora sobre una mujer que un día decidió dedicar su vida entera al arte y la filantropía. Es el retrato de China Zorrilla, una estrella que con 90 años vividos a pleno sigue brillando con la misma intensidad.</p>
  <p>¿Cuánto conocemos realmente de China Zorrilla? ¿Cuántos personajes encierra esa señora paqueta, que pudo haberse casado con un hombre de su misma clase y de fortuna, formar un hogar tradicional, tener hijos y envejecer viendo crecer a sus nietos? Se sabe: por sus venas corre sangre de artista, de su abuelo poeta y de su padre escultor, pero ¿fue eso suficiente para que, siendo una adolescente, eligiera una profesión muy mal vista en su época? Poseedora de ese don especial que solo tienen los elegidos, hizo reír con su humor refinado y conmovió en papeles dramáticos. Recorrió los escenarios más importantes del mundo para mostrar su arte y su talento. En todos cosechó aplausos y la aprobación de la crítica. ¿Qué costo tuvieron esos aplausos y esas críticas? El cine, la televisión y la radio la convirtieron en una figura de inmensa popularidad. ¿Qué dejó por el camino? ¿Qué fue de sus amores?</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160056-a-mi-me-aplauden-9789974701229',
  booktrailer: 'https://www.youtube.com/watch?v=WQ7fmdmjQKU',
  user: user)
book8.photo.attach(io: File.open('app/assets/images/Book_Covers/A mi me aplauden.jpg'), filename: 'image.jpg')
book8.cover.attach(io: File.open('app/assets/images/Portadas/a_mi_me_aplauden.jpg'), filename: 'image.jpg')

book9 = Book.create!(
  title: 'Serás mía o de nadie',
  subtitle: 'La verdadera muerte de Delmira Agustini',
  year: '2013',
  description: '<p>Transgredió las normas de su tiempo y se convirtió rápidamente en mito y leyenda. Su historia y la de su trágica muerte han sido contadas muchas veces. A poco de cumplirse un siglo de aquel día, Diego Fischer nos invita a que conozcamos lo que realmente sucedió con Delmira Agustini, la joven de mirada transparente que escribía poesía erótica a comienzos del siglo XX.</p>
  <p>¿Cuánta verdad hay en lo que se ha escrito y reescrito sobre Delmira? ¿Quién fue realmente Enrique Job Reyes, su marido? ¿Qué papel jugó el entorno familiar en su vida y su muerte?</p>
  <p>Basado en una investigación periodística, Serás mía o de nadie rescata documentos inéditos de Delmira y la familia Agustini que arrojan luz sobre hechos silenciados durante cien años.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/161384-seras-mia-o-de-nadie-9789974881907',
  booktrailer: 'https://www.youtube.com/watch?v=nzNFlZODmzU',
  user: user)
book9.photo.attach(io: File.open('app/assets/images/Book_Covers/Seras mia o de nadie.jpg'), filename: 'image.jpg')
book9.cover.attach(io: File.open('app/assets/images/Portadas/seras_mia_o_de_nadie.jpg'), filename: 'image.jpg')

book10 = Book.create!(
  title: 'Tres hombres y una batalla',
  subtitle: 'Historias desconocidas que rodearon a Millington-Drake y al Graf Spee',
  year: '2014',
  description: '<p>Un embajador británico que llega a Montevideo en 1934, con la misión de neutralizar la influencia de la Alemania nazi y de la Italia de Mussolini. Una Europa en la que una nueva guerra se divisa en el
horizonte, mientras quienes no adhieren a sus gobiernos totalitarios son perseguidos o confinados en campos de concentración. Una familia austríaca de origen judío que se resiste a morir en Auschwitz. Una familia alsaciana afincada en Uruguay desde comienzos del siglo XX que se dispone a luchar por Francia y a reivindicar un crimen histórico.</p>
<p>Tres hombres y una batalla es el relato de una sucesión de hechos desconocidos que cambiaron el rumbo de la historia, protagonizados por Eugen Millington-Drake, Wilhelm Spielmann y Alberto Voulminot, que coincidieron con la batalla del Río de la Plata y el hundimiento del Graf Spee.</p>
<p>Tres hombres y una batalla es una investigación periodística en la que Diego Fischer, con documentos que ven la luz por primera vez, retrata un Uruguay cuyos gobernantes, al tiempo que pregonaban su solidaridad con las naciones invadidas por Hitler, cerraban las puertas a las víctimas del nazismo.</p>
<p>Tres hombres y una batalla es también una historia de solidaridad y generosidad que confirma que, aun en las épocas más oscuras de la humanidad, existen hombres capaces de gestos grandiosos.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160544-tres-hombres-y-una-batalla-9789974723184',
  booktrailer: 'https://www.youtube.com/watch?v=SDGoe6l2laY',
  user: user)
book10.photo.attach(io: File.open('app/assets/images/Book_Covers/Tres hombres y una batalla.jpg'), filename: 'image.jpg')
book10.cover.attach(io: File.open('app/assets/images/Portadas/tres_hombres_y_una_batalla.jpg'), filename: 'image.jpg')


book11 = Book.create!(
  title: 'Carlota Ferreira',
  subtitle: 'Retrato de una mujer que se inventó',
  year: '2015',
  description: '<p>¿Existió Carlota Ferreira? ¿O es una leyenda tejida a partir de un retrato? ¿Quién fue efectivamente esa matrona de gesto altivo y mirada desafiante que Juan Manuel Blanes inmortalizó? ¿Podía una mujer en el Uruguay del último tercio del siglo XIX jactarse de sus amoríos y aventuras? ¿Es cierto que la dueña de esa figura corpulenta fue amante del pintor y esposa de su hijo menor? ¿Qué pasiones pueden llevar a un joven a matar a su hermano por una dama quince años mayor que él?</p>
  <p><i>Carlota Ferreira. Retrato de una mujer que se inventó</i> es una investigación periodística de Diego Fischer que derriba varias leyendas y mitos. Es el descubrimiento de un mundo misterioso, por momentos sórdido y cruel, cuyos protagonistas parecen haberse puesto de acuerdo en sembrar acertijos y cubrir los hechos con una pátina amable para que la historia los recogiera con una mirada ingenua.</p>
  <p>Aquí está la historia de una mujer cuya existencia, real o ficticia, el lector deberá descubrir. Es también el retrato que Juan Manuel Blanes jamás pintó: el de un país que buscaba su identidad y una sociedad hipócrita que castigaba a sus mejores talentos.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160724-carlota-ferreira-9789974732711',
  booktrailer: 'https://www.youtube.com/watch?v=gsHIDZSVMD4',
  user: user)
book11.photo.attach(io: File.open('app/assets/images/Book_Covers/Carlota Ferreira.jpg'), filename: 'image.jpg')
book11.cover.attach(io: File.open('app/assets/images/Portadas/carlota_ferreira.png'), filename: 'image.jpg')


book12 = Book.create!(
  title: 'Mejor callar',
  subtitle: 'Escándalo y silencio de los crímenes del Prado',
  year: '2016',
  description: '<p>Tres meses después de terminada la Guerra Cívil de 1904, el Uruguay todo se conmovía con el asesinato de Celia Rodríguez Larreta a manos de su marido, Adolfo Latorre. Horas después, el propio Latorre moría de un tiro disparado por el abogado de su mujer. Los hechos, bautizados por la prensa de la época como la tragedia del Hotel del Prado, ocuparon las primeras planas de los diarios de Montevideo y Buenos Aires.</p>
  <p>¿Cuáles fueron las verdaderas razones de los dos crímenes? ¿Los hechos fueron como se contaron? ¿Qué papel cumplió en la historia Luis Alberto de Herrera? ¿Qué consecuencias politicas tendrían estas muertes? ¿Cómo era la vide de la alta sociedad montevideana del Novecientos?</p>
  <p>Mejor callar es una nueva investigación de Diego Fischer, en la que el escritor deja al descubierto hechos, personajes y tramas que permanecieron cubiertos por un manto de silencio durante más de un siglo. Mejor callar es el retrato de una sociedad cruel e hipócrita, que condenaba severamente a las mujeres que rompían las estrictas normas de la época o intentaban rebelarse contra ellas.</p>
  <p>Basado en documentos inéditos hasta hoy, el autor va encastrando las piezas de un complicado puzle en el que varias de las familias más distinguidas y acaudaladas de ambas orillas del Río de la Plata fueron víctimas y victimarias de dos crímenes cuyos reales motivos la Historia prefirió callar.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/160914-mejor-callar-9789974741690',
  booktrailer: 'https://www.youtube.com/watch?v=Rzxv2geSmNU',
  user: user)
book12.photo.attach(io: File.open('app/assets/images/Book_Covers/Mejor callar.jpg'), filename: 'image.jpg')
book12.cover.attach(io: File.open('app/assets/images/Portadas/mejor-callar.jpg'), filename: 'image.jpg')

book13 = Book.create!(
  title: 'El sentir de las violetas',
  subtitle: 'El noviazgo eterno de Julio Herrera y Elvira Reyes',
  year: '2017',
  description: '<p>¿Qué lleva a una mujer a cultivar el amor y la fidelidad a un hombre durante más de cincuenta años?</p>
<p>La noche de verano de 1862, cuando Elvira Reyes se presentaba en sociedad, tenía ante sí la promesa de un futuro lleno de felicidad.
Pertenecía a una familia acomodada, era joven y hermosa. Poco después se comprometería con una de las personalidades más importantes de la política y la sociedad montevideana: Julio Herrera y Obes.</p>
<p>El ansiado casamiento, sin embargo, nunca llegó a concretarse. Elvira confeccionó y bordó tres ajuares, tantos como fechas de matrimonio fijó y aplazó con su novio. Mientras Julio Herrera vivía con intensidad los agitados años de conflictos políticos y sociales que afectaban al Río de la Plata, que varias veces lo llevaron al destierro, Elvira veía pasar los años languideciendo en una espera interminable.</p>
<p>¿Cuál fue el destino de este amor? ¿Por qué Julio Herrera evitó formar una familia? ¿Qué secretos se esconden detrás de esta figura que fue presidente constitucional de la República y que pasó a la historia como el hombre que reinstauró, en el siglo XIX, los gobiernos civiles luego de quince años de dictaduras militares? ¿Cómo era verdaderamente Elvira, esa mujer paciente que dedicó su vida a amar y acompañar a un hombre que anteponía la política a su vida personal?</p>
<p>Hay quienes afirman que la de Elvira y Julio fue la historia romántica por excelencia en el Uruguay del siglo XIX.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/161337-el-sentir-de-las-violetas-9789974881716',
  booktrailer: 'https://www.youtube.com/watch?v=TuFPKwCyiTk',
  user: user)
book13.photo.attach(io: File.open('app/assets/images/Book_Covers/El Sentir de las violetas.jpg'), filename: 'image.jpg')
book13.cover.attach(io: File.open('app/assets/images/Portadas/sentir_de_las_violetas.png'), filename: 'image.jpg')


book14 = Book.create!(
  title: 'Doña Cándida Saravia',
  subtitle: 'El remanso de Aparicio',
  year: '2018',
  description: '<p>Mucho se ha dicho y escrito sobre la deslumbrante figura de Aparicio. En contraste, es muy poco lo que se conoce sobre doña Cándida Díaz de Saravia, su compañera de vida y sostén espiritual.</p>
<p>Esposa cómplice, madre atenta, pilar del mundo que rodeaba a Saravia, doña Cándida fue una mujer fuerte, decidida, de convicciones claras y ternura infinita. Pero también fue la mujer que no titubeó en tomar las riendas de El Cordobés en los tiempos de guerra y manejar con mano segura los negocios familiares. Sin su apoyo incondicional y su trabajo, Aparicio no habría logrado llevar a cabo su hazaña patriótica. Ella significaba en la vida del caudillo la estabilidad, el amor y el sereno remanso imprescindible tras la batalla.</p>
<p>Este libro traza con lucidez y precisión cómo Saravia fue convirtiéndose en un protagonista clave de la vida del país. Revela detalles nunca antes señalados sobre aquella gesta, gracias a una investigación profunda de la que surgen nuevos datos y documentos antes desconocidos. A través de una narración atrapante, el lector se asomará al nítido relato de una época fundamental de nuestra historia.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/161734-dona-candida-saravia-9789974892781',
  booktrailer: 'https://www.youtube.com/watch?v=UTAy46eK0oM',
  user: user)
book14.photo.attach(io: File.open('app/assets/images/Book_Covers/dona-candida-saravia.jpg'), filename: 'image.jpg')
book14.cover.attach(io: File.open('app/assets/images/Portadas/candida_saravia.jpg'), filename: 'image.jpg')

book15 = Book.create!(
  title: 'El robo de la historia',
  subtitle: 'La trama desconocida de las libras de Mailhos',
  year: '2019',
  description: '<p>En una apacible noche de abril de 1970, llamaron a la puerta de la casona en la que funcionaban las oficinas de Luis Mailhos. Araceli, la casera, atendió sin alarmarse, pues del otro lado de la puerta se encontraba un funcionario de confianza de su patrón. El hombre venía acompañado.
De esta forma dio inicio uno de los atracos más soprendentes de la historia uruguaya, cuya trascendencia llevó a la prensa a llamarlo “El robo del siglo”. El complejo plan urdido por el movimiento tupamaro para apropiarse de los lingotes y las libras de oro que se encontraban celosamente custodiados elevaron a la categoría de leyenda el accionar del grupo guerrillero.</p>
<p>Este libro relata con pormenores la historia de ese robo que marcó un antes y un después en la sociedad uruguaya. Una familia inmensamente rica, que sin embargo no hacía ostentación de su poder, era víctima de un millonario robo, y como consecuencia de éste el propio Luis Mailhos terminó procesado penalmente.</p>
<p>Con precisión de investigador y vértigo de novelista, Diego Fischer construye una trama sólida y atrapante que guiará al lector por el vértigo de una época de profundos cambios sociales, recreando la compleja urdimbre que compone nuestra identidad y señalando sus contradicciones.</p>',
  awards: '',
  link: 'https://www.penguinlibros.com/uy/biografias/162248-el-robo-de-la-historia-9789974903432',
  booktrailer: 'https://www.youtube.com/watch?v=orTQZVYrTws',
  user: user)
book15.photo.attach(io: File.open('app/assets/images/Book_Covers/El Robo de la Historia.jpg'), filename: 'image.jpg')
book15.cover.attach(io: File.open('app/assets/images/Portadas/robo_de_la_historia.jpg'), filename: 'image.jpg')

book16 = Book.create!(
  title: 'Cuando todo pase',
  year: '2020',
  description: '<p>La violación y el asesinato de dos mujeres uruguayas en Madrid es parte de un siniestro plan elaborado por las milicias rojas que, al descubrir el apoyo y la ayuda que los diplomáticos latinoamericanos les brindaban a religiosos y políticos perseguidos por el gobierno republicano, deciden enviar un sangriento mensaje.</p>
<p>Los avatares de Daniel Cibils, un joven uruguayo de la alta sociedad montevideana y sobrino del embajador de Uruguay en Madrid, que cursa sus estudios en el colegio de El Escorial, nos cautivan y nos acercan al dramático ambiente de la década de 1930.</p>
<p>La presencia de Uruguay en la fugaz República española y en el comienzo de la guerra civil fue mucho mayor de lo que la historia nos ha mostrado. Con documentación inédita, recabada en ambos lados del Atlántico, Diego Fischer relata en Cuando todo pase las tragedias, intrigas y amores que protagonizaron varios uruguayos en una España dividida, empobrecida y azotada por la crisis que desembocaría en una guerra fratricida.</p> 
<p>Cuando todo pase es una muy lograda pintura de época que comienza con la partida del lujoso transatlántico Giulio Cesare del puerto de Montevideo rumbo a Barcelona, con la ilusión de varios de sus pasajeros de conquistar Europa. Al llegar a España, en las calles de Madrid percibirán la incertidumbre y la desolación, y sufrirán las intrigas del poder que domina un país decadente que seguiría enviando a América a miles de sus hijos.</p> ',
  awards: '',
  link: 'https://www.planetadelibros.com.uy/libro-cuando-todo-pase/328824',
  booktrailer: 'https://www.youtube.com/watch?v=mEDZ84jleG8',
  user: user)
book16.photo.attach(io: File.open('app/assets/images/Book_Covers/Cuando todo pase.jpg'), filename: 'image.jpg')
book16.cover.attach(io: File.open('app/assets/images/Portadas/cuando_todo_pase.jpg'), filename: 'image.jpg')

book17 = Book.create!(
  title: 'Secretos de un jardín',
  subtitle: 'Historias y leyendas de Carrasco',
  year: '2019',
  description: '<p>En "Secretos de un jardín", Diego Fischer nos propone un recorrido por la historia de Carrasco. A través de un relato cautivante y ameno, el autor va desgranando pequeñas historias, grandes personajes y leyendas del balneario que, con el transcurso de los años, devino en e barrio jardín más hermoso del Cono Sur.</p>
<p>La visión de sus impulsores, la edificación de los primeros chalés, la visita de los personajes ilustres y de otras figuras tan polémicas como famosas, acontecimientos que conmovieron al mundo y tuvieron su epicentro en la zona, van surgiendo como telón de fondo de historias cotidianas y de leyendas que se han tejido a lo largo de más de un siglo.</p>
<p>El lector sabrá como y por qué se edificaron algunas de las mansiones más emblemáticas del balneario. Se enterará de los entretelones de la visita del poeta Federico García Lorca, dos años antes de ser fusilado en Granada. De cómo Carrasco fue la escala previa al desembarco triunfal de Eva Perón a su regreso de Europa, y por qué resultó la antesala del nacimiento de Evita, el mito.</p>
<p>Con abundantes fotografías de época, que muestran un balneario de cuento y de cuentos, "Secretos de un jardín" es el viaje a un tiempo que hoy parece aún más lejano de lo que realmente es. Secretos que el mar intentó borrar, pero este libro los recupera y devela sin afán nostálgico. Hoy otras historias y otras leyendas se están escribiendo para ser los secretos del jardín del mañana.</p>',
  awards: '',
  user: user
  )
book17.photo.attach(io: File.open('app/assets/images/Book_Covers/secretos-de-un-jardin.jpg'), filename: 'image.jpg')
book17.cover.attach(io: File.open('app/assets/images/Portadas/secretos-de-un-jardin.jpg'), filename: 'image.jpg')

puts 'Books finished'

puts 'Creating projects...'

project1 = Project.create!(
  title: 'Cien años Punta del Este - Al este de la historia',
  region: 'Documental',
  year: '2005',
  description:'<p>Cien años es un documental que narra la historia de Punta del Este. Dirigido y producido por el periodista  Diego Fischer,  aporta una mirada diferente sobre  el balneario.</p>
<p>Testimonios de antiguos veraneantes  y de actuales residentes,  se entrecruzan con  fotografías y películas de época inéditas, que pintan  un lugar único y privilegiado que ha sobrevivido a las efímeras modas de verano. Cien años, muestra a una Punta del Este silenciosa   y oculta  : la de los verdaderos pioneros. El balneario que supo dar cabida y refugio a poetas y escritores como Rafael Alberti y Adolfo Bioy Casares. O inspiró a músicos como Vinicius de Moraes o Astor Piazzolla. El lugar en el que se libraron batallas diplomáticas cruciales en los tiempos de la Guerra Fría. El sitio en el que Wilson Ferreira y Susana Sienra, se conocieron, se enamoraron y vieron por última vez antes de partir al exilio. El paisaje que  Lussich forestó para serenar al viento. El reducto que  la aristocracia argentina adoptó como propio...</p>
<p>Argentinos, uruguayos, brasileños y europeos recorren, con sus relatos, el ayer y el hoy de una Punta del Este mágica. Todos ellos escribieron y protagonizaron la más bella historia del lugar y, tal vez, la menos conocida.</p>
<p>Son más de 20  relatos que se suceden en un documental, en el que las imágenes del ayer y el hoy desfilan al son de una banda musical  , especialmente compuesta para el filme.</p>
<p>Cien años está basado en el libro homónimo: Cien años-Al este de la  historia  del uruguayo Diego Fischer y  la argentina Silvia Pisani y que lleva ya más de cuatro ediciones vendidas.</p>',
  trailer: 'https://www.youtube.com/watch?v=W0hqrmFegR0',
  user: user)
project1.photo.attach(io: File.open('app/assets/images/Projects/100.jpg'), filename: 'image.jpg')

project2 = Project.create!(
  title: 'Historias, relatos y sueños',
  region: 'Documental',
  year: '2007',
  description:'<p>"Historias, relatos y sueños" es un homenaje a los hombres y mujeres que
-150 años atrás- llegaron al Uruguay desde los distintos cantones suizos
para fundar Colonia Suiza.</p>
<p>Es también una demostración de que la inmigración suiza no se ha limitado a los tiempos fundacionales de Nueva Helvecia, sino que ha tenido una continuidad en el tiempo que llega a nuestros días.</p>
<p>Filmado en Uruguay y Suiza, el documental recoge testimonios de descendientes directos de integrantes de las familias que llegaron en 1861 a Colonia y de personas que siguen viviendo hoy en las casas solariegas de aquellos inmigrantes.</p>',
  trailer: 'https://www.youtube.com/watch?v=i-5K1dR9U_A',
  user: user)
project2.photo.attach(io: File.open('app/assets/images/Projects/historias-relatos-suenos.jpg'), filename: 'image.jpg')

project3 = Project.create!(
  title: 'Algo interesante que contar',
  region: 'Documental',
  year: '2014',
  description:'<p>Documental realizado por Diego Fischer, estrenado en el año 2014, aporta películas de época inéditas, que muestran a figuras del arte y de la política del Río de la Planta en la década de 1960. Beatriz Haedo es una de las principales entrevistadas.</p>
<p>La Azotea, desde su creación, a comienzos de la década de 1940, fue un lugar donde se registraron hechos políticos y culturales de resonancia que trascendieron el Río de la Plata y repercutieron en el mundo entero. Allí, tras el derrocamiento de Juan Domingo Perón, en 1955, se daban cita peronistas y antiperonistas en reuniones organizadas por Haedo, que hubieran sido imposibles de imaginar y mucho menos concretar en la convulsionada Argentina de aquellos años.
También fue en La Azotea, donde se libró una de las batallas diplomáticas más importantes de la Guerra Fría. Sucedió en 1961, durante la reunión del Consejo Interamericano Económico y Social (CIES) en el que el gobierno de John Kennedy lanzó la Alianza para el Progreso y Cuba, en la persona del “Ché” Guevara, presentó otra propuesta. Personalidad esta última que también visitó La Azotea y fue recibido por Víctor Haedo.</p>',
  trailer: 'https://www.youtube.com/watch?v=HssFLWivwDY',
  user: user)
 project3.photo.attach(io: File.open('app/assets/images/Projects/algo-interesante-que-contar.png'), filename: 'image.png')

project4 = Project.create!(
  title: 'La Comedia de China',
  region: 'Muestra',
  year: '2016',
  description:'<p>Un homenaje a una de las artistas más brillantes que ha dado el Uruguay, en una muestra que reúne materiales inéditos y objetos personales del período 1948-1959 en el que fue primera figura de la Comedia Natural. Ese tiempo China lo definió como los mejores años de su vida.</p>',
  trailer: 'https://www.youtube.com/watch?v=AUh9OmZ0QVE',
  user: user)
project4.photo.attach(io: File.open('app/assets/images/Projects/comedia-de-china.jpg'), filename: 'image.jpg')

project5 = Project.create!(
  title: 'Al Encuentro de las Tres Marías',
  region: 'Obra de teatro',
  year: '2010',
  description:'<p>Versión teatral de uno de los más grandes éxitos editoriales recientes, la novela homónima de Diego Fischer sobre la vida de Juana de Ibarbourou. La obra nos muestra a la poetisa más allá del mito, en una parábola de éxito, decadencia y dolor que tiene mucho que ver con la historia del Uruguay del siglo XX. Victoria Rodríguez interpreta a Juana joven, y la actriz Nidia Telles a la Juana de la madurez. Por su parte, Humberto de Vargas recorre 17 personajes masculinos que jalonaron la vida de la poetisa.</p>
  <p><strong>Elenco original por orden de aparición:</strong></p>
  <p></p>
  <ul>
  <li>Juana mayor - Nidia Telles</li>
  <li>Juana joven - Victoria Rodríguez</li>
  <li>El hombre - Humberto de Vargas</li>
  </ul>
  <p>Voces en off:</p>
  <ul>
  <li>Mujeres - Susana Maissonave, María Mendive, Stefanie Neukirch, Ana Rosa</li>
  <li>Niños - Catalina Aguerre, Francisco Bottero, Nicolás Bottero</li>
  </ul>
  <p>Equipo técnico:</p>
  <ul>
  <li>Producción general - Diego Fischer</li>
  <li>Dirección general - Álvaro Ahunchain</li>
  <li>Escenografía - Sebastián Suárez</li>
  <li>Vestuario - Óscar Álvarez</li>
  <li>Iluminación - Ignacio Tenuta</li>
  <li>Música - Alberto Magnone</li>
  <li>Técnico de grabación - Francisco Risso</li>
  <li>Operador de luces - Gerardo Egea</li>
  <li>Operador de audio - Leticia Martínez</li>
  <li>Asistente de dirección - Miguel Mediza</li>
  </ul>
  ',
  trailer: 'https://www.youtube.com/watch?v=RtDDDZOvgeE',
  user: user)
project5.photo.attach(io: File.open('app/assets/images/Projects/juana-teatro.jpg'), filename: 'image.jpg')

project6 = Project.create!(
  title: 'Qué Tupé',
  region: 'Obra de teatro',
  year: '2011',
  description:'<p>Hace 90 años, Uruguay se conmovió con la muerte de Washington Beltrán en un duelo a pistola. Su contrincante en el lance fue el dos veces ex presidente de la República José Batlle y Ordóñez. El periodista y escritor Diego Fischer se sumergió en esta historia y de su investigación nació el libro Qué Tupé, que mezcla ficción con historia y acerca nuevos datos sobre este hecho. En este exitoso libro se basa la obra.</p>
    <p></p>
    <p><strong>Elenco original por orden de aparición:</strong></p>
    <ul>
    <li>José Batlle y Ordóñez - Júver Salcedo</li>
    <li>Matilde Pacheco de Batlle - Lilián Olhagaray</li>
    <li>Washington Beltrán Barbat - Álvaro Armand Ugón</li>
    <li>Elena Mullin de Beltrán - Victoria Rodríguez</li>
    <li>Alberto Mañé Algorta, Carlos Roxlo, Eduardo Rodríguez Larreta, Soldado, Baltasar Brum, Lector, Ovidio Fernández Ríos, César Batlle Pacheco, Leonel Aguirre, José Mullin, Clown, Carlos Quijano, Forense, Sacerdote - Alejandro Martínez</li>
    <li>Secretaria, Lectora, Cuñada de Elena, Clown, Prima de Elena, Monja - Natalia Chiarelli</li>
    <li>Enrique Beltrán Mullin - Lucas Papariello.</li>
    </ul>
    <p><strong>Equipo Técnico</strong></p>
    <ul>
    <li>Dirección general - Álvaro Ahunchain</li>
    <li>Escenografía - Sebastián Suárez</li>
    <li>Vestuario - Óscar Álvarez</li>
    <li>Música original - Alberto Magnone</li>
    <li>Voz en off - Adriana Da Silva</li>
    <li>Iluminación - Álvaro Ahunchain</li>
    <li>Coreografía - Pablo Conca</li>
    <li>Técnico de sonido - Jorge Cancela</li>
    <li>Operadores de luces y de audio - Gabriela Fagúndez y Mario Parentelli</li>
    <li>Fotografía - Tali Kimelman y María Fernández</li>
    <li>Diseño gráfico - Agustina Boni</li>
    </ul>
  ',
  trailer: 'https://www.youtube.com/watch?v=tgb__q0Obug',
  user: user)
project6.photo.attach(io: File.open('app/assets/images/Projects/que-tupe-teatro.jpg'), filename: 'image.jpg')

project7 = Project.create!(
  title: 'Las luciérnagas de la Azotea de Haedo',
  region: 'Obra de teatro',
  year: '2004',
  description:'<p><strong>Reseña publicada originalmente en el diario La Nación, escrita por Pablo Sirvén:</strong></p>
<p><strong>"Las luciérnagas de la azotea de Haedo". </strong>Unipersonal en un acto. Autores: Diego Fischer y Silvia Pisani. Protagonista: Elena Zuasti. Voz en off: Delfy Galbiati. Sonido e iluminación: Equipo´s. Edición musical: Sebastián Araujo. Funciones: miércoles a domingos, a las 20.30, hasta fin de mes. La Azotea de Haedo, avenida Artigas, camino a San Carlos, Punta del Este. </p>
<p><br /><strong>Nuestra opinión: muy bueno</strong></em></p>
<p>PUNTA DEL ESTE.- Verdaderamente encantador, por lo evocativo, es el espectáculo que se presenta en La Azotea de Haedo, una hermosa quinta ubicada en las afueras de Punta del Este. Con gracia y vivacidad, Elena Zuasti, gran actriz de la Comedia Nacional del Uruguay, como única protagonista, encarna a María, la cocinera de quien fue dueño de esa casa hasta su muerte, en 1970, el legendario dirigente blanco Eduardo Víctor Haedo, diputado y senador durante más de tres décadas, ministro de Instrucción Pública y presidente de la Nación ("he sido en la vida todo, menos cardenal", decía con razón). Una personalidad avasallante y simpatiquísima que imprimió su sello tan particular -"con sencillez republicana", su slogan predilecto- en la política uruguaya.</p>
<p>Allí donde había un gran arenal, a cuya vera pasaba el tren, en los años 40, Haedo, luego de ganar la lotería, levantó una casa a la que con el tiempo agregó mejoras y especies vegetales en cantidad. Conviene llegar con la debida anticipación para recorrer ese parque con luz natural y apreciar la colección de fotos y el libro de visitas que incluyen imágenes y agradecimientos de figuras descollantes del siglo XX. Porque, en efecto, el carácter afable, carismático y de buen componedor que tenía este político hizo que aquel predio se convirtiese cada verano en lugar de procesión obligado de ilustres visitantes de lo más diversos y hasta antagónicos.</p>
<p>Puede decirse, sin faltar a la verdad, que a lo largo de los años allí se dio cita la flor y nata del Río de la Plata. Y más también, como cuando Haedo propició a Punta del Este como sede de sucesivas reuniones de la OEA y llegaron hasta su concurrida quinta personajes del calibre de Ernesto "Che" Guevara.</p>
<p>Precisamente de todo ello trata "Las luciérnagas de la Azotea de Haedo", eficaz traslación al campo teatral del capítulo dedicado al dirigente uruguayo en "Al este de la historia" (Aguilar, Montevideo, 1998/2000), el atractivo y documentado libro en dos tomos que escribieron los periodistas Diego Fischer y la corresponsal de LA NACION en España, Silvia Pisani, sobre figuras que marcaron con su impronta estas playas.</p>
<h5>Estrellas y bichos de luz</h5>
<p>Ubicados los espectadores en sillas al aire libre, frente al atelier -donde Haedo consagró sus últimos años de vida a la pintura y en estos momentos se exhibe una muestra del artista plástico Adolfo Sayago-, si el clima acompaña con un buen cielo estrellado y a ello se suma la mágica presencia de "bichitos de luz" que atraviesan el parque (y a los que alude el título de la obra), todo estará más que dado para que, con una mínima apoyatura de luces y sonidos, Zuasti complete la sugestión con su entrañable y feliz composición de esa doméstica que adoraba a su patrón aun cuando nunca supiese exactamente para cuántos comensales debía cocinar su invariable menú compuesto de tallarines con tuco y pastelitos de membrillo.</p>
<p>"Aquí siempre sobran charlas y platos para lavar", evoca en su entrador monólogo, cargado de anécdotas verídicas y luminosas y dichas con gran donaire, sobre príncipes, guerrilleros, cantantes, rabinos, políticos y tantos más que, sin distinción de banderías, salieron de La Azotea mejor de lo que entraron.</p>',
  user: user)
project7.photo.attach(io: File.open('app/assets/images/Projects/luciernagas-azotea.jpg'), filename: 'image.jpg')

project8 = Project.create!(
  title: 'Cantando una triste canción',
  region: 'Obra de teatro',
  year: '2006',
  description:'<p>La historia se ubica en una tardecita de invierno de Carrasco, con una tormenta que amenaza con llevárselo todo y una conversación entre dos personas que demoró más de tres décadas en producirse.</p>
<p>Él es un sobreviviente de los Andes. Ella, la madre de uno de los deportistas que en 1972 murió en la Cordillera. Él perdió a su mejor amigo. Ella a su hijo. Y están unidos por recuerdos entrañables, por la misma tragedia y por un duelo que parece no tener fin.</p>
<p><em>Cantando una triste canción </em>es el encuentro entre dos seres que han querido hablar a solas a lo largo de 34 años y al fin lo logran. Basado en los testimonios de Eduardo Strauch y Antonio Vizintín, el texto de Diego Fischer es interpretado por Sergio Pereira y Elena Zuasti, con dirección de esta última.</p>',
  user: user)
project8.photo.attach(io: File.open('app/assets/images/Projects/cantando-triste-cancion.jpg'), filename: 'image.jpg')

project9 = Project.create!(
  title: 'Los notables',
  region: 'Programa de TV',
  year: '2015',
  description:'<p>Programa periodístico de entrevistas, emitido por cuatro temporadas desde el año 2015, filmado en Punta del Este y con invitados como Ida Vitale, Julio María Sanguinetti, Carlos Julio Pereyra, César Troncoso, Alberto Fernández, Juan Carlos López Mena, Rossana Taddei y Adolfo Sayago.</p>',
  trailer: 'https://www.youtube.com/watch?v=iFHpy0Bq-TM',
  user: user)
project9.photo.attach(io: File.open('app/assets/images/Projects/los-notables.jpg'), filename: 'image.jpg')


puts 'Projects finished'

puts 'Creating posts...'


post8 = Post.create!(
  title: 'Una foto que dice todo',
  content: '
<p>Quizá todo consista en lo que se pida y en lo que se espera, cuando uno no espera mucho las cosas caen de regalo”, con estas palabras Ida Vitale me respondió el año pasado, en una entrevista de televisión, cuando le hice referencia a la sucesión de premios internacionales que había recibido en los últimos años. En esa lista figuran los galardones más importantes que un poeta puede aspirar: el Premio Octavio Paz, el Alfonso Reyes, el Federico García Lorca y el Reina Sofía y el Max Jacob le fueron otorgados entre 2009 y 2017. Entonces, aún no se había anunciado el Premio Cervantes 2018, que recibió el martes pasado en la Universidad de Alcalá de Henares.</p>

<p>La foto de esa mujer menuda de 95 años, de pelo blanco cuidadosamente peinado, lúcida y ágil, sonriendo y con lágrimas de emoción contenidas y apretando su corazón con la mano derecha en señal de agradecimiento y con el rey de España Felipe VI, en un segundo plano aplaudiéndola sonriente y de pie, lo dice casi todo. El resto está en el discurso de Vitale.</p>

<p>Esa imagen recorrió los portales del mundo, y fue portada de El País al día siguiente. Simboliza lo mejor de nuestra cultura, la que hizo al Uruguay conocido en todo el mundo y merecedor de respeto y reconocimiento internacional.</p>

<p>Sin dudas que el mérito es de Vitale y su obra, a la que hay que sumarle el encanto y el sentido del humor de una mujer que a su edad no pierde la curiosidad, la gracia y la humildad. La frase improvisada con que remató su discurso en el púlpito laico de Alcalá de Hernares, es elocuente. “Querría hacerme perdonar la audacia de venir aquí y a este lugar y meterme a hablar de Cervantes”.</p>

<p>Un discurso en el que Vitale, recordó a sus ancestros italianos, a su abuelo abogado y culto que vino a estas latitudes con Garibaldi. A sus primeras lecturas en las que, El Quijote “llegó un poco tarde” y a una pequeña biblioteca de su adolescencia cuyos volúmenes estaban numerados y que ella misma desempolvaba todos los sábados. Vitale nació y se crió en una familia de clase media que apostaba a la cultura y en la que su tío Pericles le leía y traducía a la vez, a Goldoni.</p>

<p>Cursó sus estudios primarios en la escuela República Argentina de calle Colonia y Cuareim, para convertirse, en 1939, en la generación que inauguró la sección femenina de los Preparatorios del Elbio Fernández. Estudió Humanidades y tuvo la fortuna de contar como profesor al español José Bergamín, (editor de García Lorca) y exiliado en estas latitudes al final de la Guerra Civil Española. Décadas más tarde ella misma debió partir al exilio en los años de la dictadura militar. México fue el país que la recibió. Con el regreso de la democracia a Uruguay, volvió, para partir nuevamente en 1989 a Estados Unidos, con su segundo marido Enrique Fierro (en primeras nupcias estuvo casada con Ángel Rama).</p>

<p>¿Puede haber algo más uruguayo que una nieta de inmigrantes italianos, educada en la escuela pública y en un colegio privado, que trabajó de traductora, docente, periodista, para ayudar a mantener su hogar, y que mientras cuidaba de sus dos hijos chicos, escribía artículos y también poesía? Hay cosas que hacen a la esencia del Uruguay: valores como la educación, la cultura, y el esfuerzo a través del trabajo que siguen vivos. No han desaparecido, aunque parezca que sí. Ida Vitale encarna todo eso.</p>
',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/foto-dice.html',
  date: '27/04/2019',
  user: user)

post7 = Post.create!(
  title: '¡Así se habla, Graciela!',
  content: '
<p>"Compartir esta fórmula supone salir a disputarle a la derecha, en su máxima expresión, las conquistas que hemos trabajado frente a un brutal proyecto neoliberal que empieza con Lacalle y su frontera la tiene en Manini”, afirmó el jueves pasado la candidata a la vicepresidencia de la República del Frente Amplio, Graciela Villar. </p>

<p>Fue durante la proclamación de la fórmula que el FA presentará en las elecciones de octubre. Comicios que, en sus palabras, serán “como la madre de todas las batallas” porque por un lado está la “oligarquía” y por otro lado el “pueblo”.</p>

<p>¡¡Bien, Graciela!! ¡Así se habla! Los uruguayos quieren un nuevo gobierno de izquierda que acabe con la oligarquía y la explotación del hombre por el hombre. Que aniquile a los malvados empresarios no importa si son gringos o uruguayos. Un gobierno que, con mano firme, no dude en echar a los capitales extranjeros que vienen a robarnos la riqueza (UPM en primer lugar), que destierre y expropie a los terratenientes foráneos que han comprado en esta última década cinco millones de hectáreas dedicadas al agro, (la mayor extranjerización del campo de la historia), que se duplique la cifra de productores agropecuarios y lecheros arruinados que tuvieron que dejar de trabajar sus emprendimientos. Diez mil familias no es un número importante y más si se trata de gente del campo.</p>

<p>La mayoría de los uruguayos sueña con un cuarto gobierno que siga sin admitir que Maduro es un dictador criminal, que ya tiene en su haber a siete mil personas muertas, torturados y otros tantos presos políticos.</p>

<p>La ciudadanía quiere licenciados truchos que rijan los destinos del país, que ocupen cargos como la vicepresidencia de la República, o administren las empresas estales, para que luego haya que rescatarlas. Anhela ministros que manden construir megaedificios como el Antel Arena, para que sean una puesta en escena del lanzamiento de candidaturas. El pueblo, como usted dice, quiere emprendimientos como la Regasificadora, Aratirí y el puerto de aguas profundas en Rocha.</p>

<p>De este a oeste, de sur a norte, los habitantes de este país, no ven la hora de que asuma una cuarta administración frenteamplista, para que Rocco Morabito regrese de sus vacaciones y vuelva a la Cárcel Central. Saben que nadie en el Uruguay ni en el mundo, puede hacer lo que la izquierda ha hecho con la seguridad a lo largo de estos tres lustros.</p>

<p>Claman por nuevos impuestos que graven a los que trabajan doce o catorce horas por día para pagar más IRPF, la enseñanza privada de sus hijos, y que estos una vez que obtengan su título universitario se vayan del país.</p>

<p>Nada mejor le puede pasar al Uruguay que lo político siga estando por encima de lo jurídico. Y que figuras como el Pato Celeste vuelvan a tener sus despachos en la Casa de Gobierno.</p>

<p>¿Ustedes se imaginan si gana la oligarquía? ¿Qué será de este país? Por eso Graciela, usted tiene razón, en las próximas elecciones se librará la madre de todas las batallas. Y será entre los que apoyan a Maduro y los que creen en la democracia, la libertad y el respeto a los derechos humanos de todos. Entre los que subsidian la marginalidad y los que ven en el trabajo y la educación una virtud. Entre los que se atribuyen haber fundado este país en 2005 y los que creen que un Uruguay mejor es posible.</p>
',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/coso-llorar.html',
  date: '02/07/2019',
  user: user)



post4 = Post.create!(
  title: 'Una Navidad sin pandemia',
  content: '
<p>Hay imágenes que siguen doliendo y a las que no me resigno. En la esquina de mi casa funciona una casa de salud.</p>

<p>Allí viven unas veinte ancianas que tienen limitaciones motrices. Todas las tardes, y particularmente los fines de semana, es posible ver a cuatro o cinco de ellas en sus sillas de ruedas en el jardín cercado que separa el predio de la vereda. Protegidas con túnicas desechables azules y con máscaras de acrílico conversan -reja mediante- con sus visitas. En su gran mayoría son jóvenes, seguramente nietos o bisnietos que, en reposeras que traen, se sientan en la vereda. Uno debería alegrarse, ya que -al menos- tienen a alguien que los visite. En parte sí. La semana pasada era el cumpleaños de una de las abuelas y un grupo de cuatro chicas y muchachos con guitarras se apersonaron a cantar durante un buen rato. Desde las ventanas de los pisos superiores del residencial, el resto de los internados se sumó a la celebración dando palmas al ritmo de la música. A más de uno que vimos desde nuestros balcones lo que sucedía, nos ganó la emoción.</p>

<p>Supongo que no debe ser el único lugar de Montevideo en que hechos como este se dan. Es una de las tantas postales de esta pandemia que nos azota desde marzo y que ha tomado un vigor inusitado en las últimas semanas. Las razones las explicó con su habitual claridad esta semana el doctor Rafael Radi.</p>

<p>Desde un comienzo, supimos que a esta peste la vencíamos todos juntos o no la derrotábamos. Desde el vamos, el gobierno apeló a la libertad con responsabilidad y eso funcionó y muy bien hasta setiembre último. ¿Qué pasó para que, ahora, día por medio se batan récords de nuevos casos?</p>

<p>Pasó de todo. Desde una marcha que celebró derechos adquiridos y justamente conquistados, pero inoportuna, a un no menos inconveniente festejo del Día del Patrimonio, que por más que rindiera tributo a los médicos y al personal de la salud, no hizo más que exponer a la ciudadanía. A partir de entonces, el crecimiento de los casos de Covid- 19 fue aumentando día a día. A ello se le sumaron las manifestaciones y protestas convocadas por el Pit-Cnt en contra de la Luc, de la Ley de Presupuesto y en ellas sus participantes usaban tapabocas y mantenían la distancia solo ante las cámaras de televisión.</p>

<p>En las últimas semanas y antes de que asumieran los nuevos gobiernos municipales, el intendente saliente de Montevideo Christian Di Candia, autorizó festejos callejeros y batucadas por varios barrios de la ciudad. Tal vez ese sea su legado: haber incentivado a mucha gente a violar las recomendaciones del Ministerio de Salud y hacer que Montevideo esté ahora en zona roja.</p>

<p>Muy distinta es hoy la actitud de la intendenta Carolina Cosse, integrante de la misma fuerza política de Di Candia, pero consciente de que a nadie le sirve y le interesa que Montevideo y el Uruguay todo padezcan lo que han padecido y sufren Argentina y Brasil.</p>

<p>Recuerdo que mi madre ya mayor y enferma, cuando le preguntaba qué regalo quería para Navidad, me respondía: “otra Navidad”, es decir un año más de vida. Seguramente hoy me contestaría otra Navidad y sin Pandemia. Si alguien me hiciera a mí la pregunta, respondería: una Navidad sin Pandemia y un 2021 en que las abuelas del residencial de la esquina de mi casa puedan abrazarse con sus nietos.</p>
  ',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/navidad-pandemia.html',
  date: '12/12/2020',
  user: user)

post6 = Post.create!(
  title: 'Un coso para llorar',
  content: '
<p>Es evidente que no puede con su afán de protagonismo. Su incontinencia verbal no conoce límites y como su imagen en el Uruguay entró en un proceso de franca decadencia, se dedica ahora a predicar frente a medios de comunicación extranjeros. Me refiero al senador José Mujica.</p>

<p>¿Qué otro político en Uruguay reúne las condiciones de animador de boliche de barrio, vendedor de humo, mentiroso contumaz y es una mezcla de Chirolita y viejo Vizcacha?</p>

<p>Supuestamente aislado en su casa, y -según dice- respetando la cuarentena, concedió una entrevista vía Skype al portal argentino de noticias Filo News. Las declaraciones y reflexiones muestran su total ausencia de autocrítica y hubieran comprometido la imagen de Uruguay a nivel internacional, si no hubiese habido en nuestro país un cambio de gobierno.</p>

<p>“Los líderes mundiales son una consecuencia de lo que estamos viviendo”, afirmó y agregó: “No te hablo de izquierda ni de derecha, sino que hay una tendencia a ser una manga de chantas, la única que mira un poco más allá es la Merkel”.</p>

<p>Recordemos cuál es la definición de chanta. Proviene del italiano (ciancia) que significa burla, mentira. Y se refiere a una persona de poca credibilidad, que dice mentiras y habla mucho.</p>

<p>A esta altura, nada de lo que diga Mujica nos debería sorprender. Es cierto, pero a mí me sigue indignando. Este señor, el rey de los chantas, se atreve a juzgar y descalificar públicamente a los jefes de Estado o de Gobierno del resto del mundo. De sus palabras se desprende que Macron y Boris Johnson son chantas. Eso sí que es ver la paja en el ojo ajeno y no la viga en el propio.</p>

<p>No conforme, Mujica siguió hablando para la barra: “La democracia queda como el orto porque cuando la democracia elige un coso de esos, estamos fritos. Más valdría que jugáramos por sorteo, capaz que embocamos alguno mejor”, dijo en alusión a Donald Trump y Jair Bolsonaro. Y hubo más apreciaciones del exjefe de Estado uruguayo y sobre el presidente estadounidense sentenció: “es para llorar”.</p>

<p>Mujica, para llorar fue su gobierno y su legado. Para llorar es usted y su barra. Para llorar es el manejo discrecional que hizo usted del poder. Para llorar fue su Puerto de Aguas Profundas, el vaciamiento de Ancap, el desastre de Aratirí, el destrozo de la Educación, las leyes inconstitucionales que su gobierno sancionó y usted promulgó (un récord en la historia del Uruguay). Para llorar fue el despilfarro que hizo usted de las finanzas públicas. Para llorar fueron los 50 mil puestos públicos que creó en su gestión. Para llorar fue que el Pato Celeste tuviera un despacho en la Casa de Gobierno y manejara los negocios con Venezuela. Para llorar y patético fue que el pasado 1° de marzo usted se negara a asistir a la entrega del mando en la Plaza Independencia.</p>

<p>Afortunadamente usted forma parte del pasado. La democracia uruguaya es muy sólida y quedó desconcertada luego que usted llegara a ser electo como presidente. Afortunadamente el sistema todo, (incluyo aquí a los sectores democráticos del FA), resistió a sus embates.</p>

<p>Sería bueno que todos los uruguayos reflexionáramos y nos preguntáramos cómo un coso como usted pudo llegar a ser el presidente de todos los orientales.</p>

',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/coso-llorar.html',
  date: '04/04/2020',
  user: user)

post5 = Post.create!(
  title: 'Nuestros verdaderos héroes',
  content: '
<p>Es una historia que crece con el correr del tiempo. Para algunos fue un milagro, para otros una odisea, para todos una tragedia: la tragedia de los Andes. </p>

<p>Cada año, cuando se acerca el 13 de octubre la historia es evocada. Este 2020 se cumplieron 48 años y la televisión le dedicó al tema programas enteros.</p>

<p>Con tres de los sobrevivientes: Antonio Vizintín, Roy Harley y Gustavo Zerbino y el escritor Pablo Vierci (autor del libro La sociedad de la nieve), transcurrió el programa Algo que decir, de canal 12, en el que Cecilia Bonino y Pablo Fabregat hicieron preguntas inteligentes y obtuvieron respuestas más que interesantes y no exentas de emoción.</p>

<p>El martes pasado fue el turno de Cristina Morán en canal 4. Cristina ostenta el privilegio de haber cubierto para canal 10 la historia y estar aún en actividad y vigente. Morán, convocó entorno a su mesa a, Harley, Roberto Canessa, Carlos Páez y Álvaro Mangino.</p>

<p>Cual gran directora de orquesta, hizo que cada uno de sus invitados diera lo mejor de sí ante las cámaras y transformó aquello en un gran concierto en el que ninguno de los instrumentos desafinó. No fue un programa más con los sobrevivientes de los Andes, fue un programa extraordinario. Una lección de vida, un canto a la vida. La emoción estuvo presente desde el primer minuto y se tradujo -en todo momento- en los ojos lagrimosos de los invitados y también de la conductora.</p>

<p>Ya no son los muchachos de los Andes. Sus rostros ahora arrugados por el paso de los años y no por el sol de la Cordillera, confirman que esos hombres, hoy abuelos y próximos a superar la barrera de los setenta, fueron, son y serán los héroes uruguayos del siglo XX. Los verdaderos héroes. Su historia es una leyenda a nivel universal. Y para quien tenga alguna duda sugiero acudir al diccionario de la Real Academia, donde entre las definiciones del término está: persona o cosa muy admiradas y que se recuerdan a pesar de paso del tiempo.</p>

<p>Para llegar al podio que hoy los sobrevivientes se han ganado en el mundo entero, debió transcurrir mucho tiempo. Ellos mismos eran muy jóvenes y habían sufrido demasiado, para que contaran su historia apenas regresaron en la Navidad de 1972. De ese tiempo datan Viven y su versión cinematográfica que no le hacen fe la historia. Entonces, Uruguay vivía una de las peores etapas de su vida republicana, su democracia se desmoronaba por la acción de un grupo de iluminados que había sembrado el terror, el odio y la muerte y que allanó el camino hacia el autoritarismo militar. La sociedad uruguaya estaba sumergida en el caos y dio la espalda a la proeza de dieciséis jovencísimos compatriotas que rompieron todos los paradigmas y vencieron el hambre, la sed, el frío y la muerte.</p>

<p>En momentos en que se analizan reformas en el Enseñanza y en que los textos de historias utilizados en Primaria y Secundaria serán cambiados, sería muy bueno que la Tragedia de los Andes se incorporara a los programas. Y que La sociedad de la nieve de Vierci, el libro en el que dan testimonio los 16 sobrevivientes, fuera lectura obligada en el Liceo. Ellos, los sobrevivientes y los que no volvieron de la Cordillera, son los verdaderos héroes uruguayos de estos tiempos.</p>
  ',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/verdaderos-heroes.html',
  date: '17/10/2020',
  user: user)

post3 = Post.create!(
  title: 'Ni el payaso, ni el tenor, ni el jabalí',
  content: '<p>Péguenle al ministro Daniel Salinas. Esa parece ser ahora la consigna del Frente Amplio. Como la alegría las arremetidas de la oposición va por barrios o por carteras ministeriales.</p>

<p>Es que a los compañeros frenteamplistas no les sirve nada y coherentes con lo que ha sido su postura desde el 13 de marzo, arremeten una y otra vez contra cada medida, paso y acción del gobierno. No debería sorprendernos, son los mismos que pidieron una cuarentena total y obligatoria como la que decretó el presidente Alberto Fernández durante nueve meses y allí tenemos a Argentina con la pandemia fuera de control y su economía destrozada. Son los que clamaron por subsidios y medias económicas a sabiendas que eran imposibles. Nadie mejor que ellos conocen en qué condiciones dejaron las arcas del Estado.</p>

<p>Son los mismos que apoyaron a todas y cada una de las marchas decretadas por el Pit-Cnt en protesta por la LUC primero y la Ley de Presupuesto después. Coincidentemente luego de estas movilizaciones el número de contagios empezó a dispararase. ¿Casualidad?.</p>

<p>Ahora cuestionan por qué no se ha empezado a vacunar. El objetivo es pegarle al ministro de Salud Pública que- desde antes de que la peste desembarcara en nuestro país - y previo a asumir el cargo y por responsabilidad personal y sin que nadie se lo pidiera u ordenara,asistió al Instituto Pasteur de Montevido para interiorizarse sobre el Covid 19 y de las condiciones en que se encontraba Uruguay para enfrentar su segura llegada.</p>

<p>El 13 de marzo Uruguay tenía cien quits para detectar casos de Coronavirus; un mes antes la Cancillería se había dado el lujo de donar a China insumos para combatir la pandemia que sumaba víctimas en ese país y se esparcía por toda Europa.</p>

<p>Pero los compañeros tienen frágil memoria. Y lo que es peor reclaman y critican lo que ellos debieron hacer y no hicieron cuando eran gobierno.</p>

<p>De nada sirvió la concurrencia esta semana a la Comisión de Salud del Senado de Salinas y del secretario de la Presidencia Álvaro Delgado, donde informaron, anunciaron el plan de vacunación y respondieron preguntas .Previamente, integrantes del GACH-vía Zoom- brindaron un informe a los legisladores. La reunión en el Parlamento duró siete horas. A su término los senadores frenteamplistas Daniel Olesker y Sandra Lazo dieron una conferencia de prensa.</p>

<p>“Hubo una política sanitaria de imprevisión y de retardo en tomar nuevas decisiones, manifestó Olesker. Por su parte la senadora Sandra Lazo sostuvo que el plan de vacunación “no tiene una fecha de inicio” y que tampoco “se habla de un laboratorio” ...</p>

<p>Las declaraciones de estos lesgisladores y de otros que han hablado por estas horas, me hicieron recordar a un discurso del filósofo español José Ortega y Gasset cuando asumió su banca de diputados en el primer parlamento democrático de la República española. Ortega, sostuvo en un discurso del que toda la prensa de España se hizo eco.</p>

<p>(...)"Es preciso que no perdamos tiempo. Nada de divagaciones ni de tratar frívolamente problemas que solo una revelación de técnica difícil puede aclarar.(...) Tres cosas no podemos venir a hacer aquí: ni el payaso, ni el tenor, ni el jabalí.....”</p>',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/payaso-tenor-jabali.html',
  date: '09/01/2021',
  user: user)

post2 = Post.create!(
  title: 'Blanes y el GACH',
  content: '<p>Quizás sea una de las mayores lecciones que nos dejará la pandemia. Lo cierto es que el Grupo Asesor Cientíﬁco Honorario que paró de funcionar formalmente el pasado 16 de junio, ocupará un lugar destacadísimo cuando se escriba la historia del coronavirus en nuestro país.</p>
<p>Gracias a Juan Manuel Blanes, los uruguayos sabemos hoy que en el siglo XIX hubo en Uruguay una epidemia de ﬁebre amarilla que en sus dos estallidos (1852 y 1872) dejó varios miles de muertes en Montevideo y en Buenos Aires. Algunos consideran al cuadro denominado Un episodio de la ﬁebre amarilla, una de las obras más importantes del pintor de la patria. No importa que la escena transcurra en una modesta vivienda de Buenos Aires y que quienes allí estén retratados -además de la mujer muerta y su pequeño hijo- sean los argentinos José Pérez y Manuel Argerich, abogado uno y destacadísimo médico el otro, respectivamente. En su tiempo, la pintura sirvió para concientizar de la gravedad de la peste y del rol que jugaron los médicos en su combate. Bien dicen que el arte no solo educa, sino que interpela, convoca a la reﬂexión y trasciende en el tiempo.</p>
<p>Un siglo y medio después, el grupo de cientíﬁcos que coordinaron Rafael Radi, Henry Cohen y Fernando Paganini, y que integran otros cincuenta prestigiosos expertos de diferentes disciplinas, jugó el papel que la obra de Blanes desempeñó: concientizar a los uruguayos de la gravedad de lo que estábamos viviendo y proponer soluciones. No fueron los únicos, también hubo personas como el ingeniero Raúl Bianchi, que diseñó el plan de vacunación, que jugaron papeles claves en la lucha contra esta peste. Ellos son los artíﬁces de esta luz que comienza a visualizarse y que quizás nos esté indicando que el ﬁnal del camino esté cerca.</p>
<p>Muchos se preguntarán por el rol del gobierno. El mayor papel del gobierno ha sido y es, haber creado al GACH, escuchar sus recomendaciones y aplicar las medidas que creyó que debía adoptar. No le tembló el pulso y no se desvió de su curso, nunca. Supo distinguir las voces bien intencionadas de hombres y mujeres capaces, de los que al grito reclamaban y reclaman aún hoy, medidas insensatas e imposibles.</p>
<p>Nunca como en todo este tiempo, los uruguayos tuvimos la posibilidad de aprender escuchando a nuestros cientíﬁcos. Nunca como en este año y medio nos enteramos de cuánta gente hace investigación cientíﬁca en el Uruguay, de las diﬁcultades que tienen para llevar adelante su trabajo y cómo aun así logran reconocimiento internacional. Recordemos al virólogo Gonzalo Moratorio, que desarrolló en el Instituto Pasteur de Montevideo kits para test de diagnóstico de Covid- 19. Recordemos que Moratorio fue el único latinoamericano que integró la lista de los diez cientíﬁcos más importantes del mundo en 2020, en la prestigiosa revista Nature.</p>
<p>Hoy se habla de realizar un gran homenaje al GACH. ¡Enhorabuena! Ahora tengamos en cuenta que el mayor tributo que podemos realizarle a los cientíﬁcos uruguayos es recordar su prédica y su ejemplo. Haber dado todo de sí sin blandir banderas políticas y conﬁrmarnos con su actitud que en la investigación cientíﬁca como en la educación de calidad, se juega el progreso de un país. Ese es su gran legado. Ya habrá algún Blanes que los pinte para la historia.</p>',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/blanes-gach.html',
  date: '26/06/2021',
  user: user)

post1 = Post.create!(
  title: 'Che, ¡quién hubiera dicho!',
  content: '<p>El mes próximo se cumplirán sesenta años de la conferencia del Consejo Interamericano Económico y Social (CIES) de la OEA, celebrada en Punta del Este.</p>
<p>La reunión convocó a los ministros de Economía y Acción Social del continente y en ella el gobierno de John F. Kennedy lanzó la Alianza para el Progreso.</p>
<p>Punta del Este se transformó en el epicentro informativo mundial y todo lo que allí acontecía fue portada en los diarios y en los informativos de televisión del planeta. Dos ﬁguras convocaban la atención de los periodistas del mundo entero que llegaron a cubrir la reunión y también de los agentes de inteligencia de todas partes: el ministro de Industria y presidente del Banco Central de Cuba, Ernesto Guevara de la Serna “el Che” y Douglas Dillon, Secretario del Tesoro de los Estados Unidos y presidente de la delegación norteamericana.</p>
<p>Dillon presentó la Alianza para el Progreso que se traducía en una ayuda a los países más pobres de América Latina de 20 mil millones de dólares, para inversiones en infraestructura a través de créditos pagaderos a cincuenta años a muy bajo interés. En contrapartida se pedía la adhesión política a Washington.</p>
<p>Eran tiempos de la Guerra Fría y aquella apuesta del gobierno de Kennedy pretendía neutralizar la creciente presencia de la Unión Soviética que, ahora, contaba con Cuba como aliado en la región. Había fracasado bahía de Cochinos, el último intento de invasión norteamericana a la isla y Fidel Castro había sorprendido al mundo proclamando que el camino de Cuba “era el socialismo”.</p>
<p>“Están cambiando autodeterminación por letrinas”, clamó el Che en su intervención en el Hotel Nogaró y agregó: “Esto no es ayuda, ni crecimiento para nuestros pueblos. Esto nos condena a la pobreza. Eso sí, …con letrinas”…</p>
<p>Castro y Guevara vivían el auge de su popularidad en el mundo entero. En el Uruguay la revolución cubana era aplaudida y admirada por mucha gente, incluso por dirigentes de primera línea de los partidos tradicionales. Había terminado con una dictadura corrupta que encabezó por siete años Fulgencio Batista. Aquellos jóvenes barbudos y carismáticos que hablaban de justicia social e igualdad eran muy bien vistos por los intelectuales del Río de la Plata y por los jóvenes universitarios. Aún no había llegado el tiempo en que las violaciones a los derechos humanos y a las libertades más elementales trascendieran fuera de La Habana. Tampoco Castro y su régimen habían comenzado a entrenar guerrilleros en su isla y a exportar la revolución por el resto de América Latina.</p>
<p>De aquella reunión que marcó un antes y un después para la historia de Punta del Este, ya que su imagen trascendió mucho más de la región, queda una foto icónica que estos días ha circulado por las redes. La sacó un fotógrafo de la agencia de noticias UPI y muestra al entonces presidente del Consejo Nacional de Gobierno, Eduardo Víctor Haedo mateando con el “Che”, en su casa, la emblemática Azotea en Maldonado. Al pie de Guevara, Poncho el perro de Haedo le olfatea las botas al guerrillero. Cuentan que la conversación fue antológica y que Haedo con ironía le habló de las bondades de la democracia uruguaya.</p>
<p>Quién hubiera dicho que sesenta años más tarde de esa fotografía, el mundo se consternaría al ver al pueblo cubano manifestando por las calles en reclamo de pan, medicinas y libertad. Y siendo reprimido duramente por la Policía.</p>',
  reference: 'https://www.elpais.com.uy/opinion/columnistas/diego-fischer/che-hubiera-dicho.html',
  date: '17/07/2021',
  user: user)

puts 'Creating slides...'

slide1 = Slide.create!(
  title: 'Cuando todo pase',
  subtitle: 'Ya disponible en 🇺🇾🇦🇷🇨🇱🇨🇴🇪🇨🇲🇽',
  link: 'https://diegofischer.com.uy/books/cuando-todo-pase',
  user: user
  )
slide1.photo.attach(io: File.open('app/assets/images/slides/cuando todo pase.jpg'), filename: 'image.jpg')

slide2 = Slide.create!(
  title: 'Carlota Ferreira',
  subtitle: 'Libro de Oro 2016. Ya disponible en eBook',
  link: 'https://diegofischer.com.uy/books/carlota-ferreira',
  user: user
  )
slide2.photo.attach(io: File.open('app/assets/images/slides/carlota ferreira.png'), filename: 'image.jpg')

slide3 = Slide.create!(
  title: 'El robo de la historia',
  subtitle: 'Libro de Oro 2020. Ya disponible en eBook',
  link: 'https://diegofischer.com.uy/books/el-robo-de-la-historia',
  user: user
  )
slide3.photo.attach(io: File.open('app/assets/images/slides/robo historia.jpg'), filename: 'image.jpg')

puts 'All done'
