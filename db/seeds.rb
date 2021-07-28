# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.delete_all
User.delete_all

<<<<<<< HEAD
puts 'Cleaning up...'

puts 'Creating user...'

user = User.create!(email: 'diegofischer14@gmail.com', password: '12345678')


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

book2 = Book.create!(
  title: 'Al este de la historia',
  subtitle: 'Un abrazo entre el ayer y el hoy',
  year: '2000',
  description:'<p>Libro donde se explora en la vida de nueve personajes, nueve relatos, historias de vida que son también parte de la historia de Punta del Este. Entre ellos hay políticos, actores, artistas, empresarios, músicos, escritores. Todos con algo en común, que es el sitio que eligieron ya sea como refugio, sitio de descanso o como fuente de inspiración creadora. Entre fotos y anécdotas se encuentran entre otras personalidades: Wilson Ferreira Aldunate, Alfonsina Storni, Margarita Xirgú. Constituye éste un segundo tomo, el primer tomo titulado "Al este de la historia"de notable éxito editorial obtuvo además la primera mención en el Premio Anual de Literatura 1998 otorgado por el Ministerio de Educación y Cultura.</p>',
  awards: '',
  user: user)
book2.photo.attach(io: File.open('app/assets/images/Book_Covers/al_este_2.jpg'), filename: 'image.jpg')

book3 = Book.create!(
  title: 'Que nos abrace el viento',
  subtitle: 'Historia y leyenda de Antonio Lussich',
  year: '2004',
  description:'<p>Se enfrentaron luego infinidad de veces en el mar. Lussich era un poeta consagrado que se dedicó después a disputarle vidas al Río de la Plata y al Atlántico, mientras creaba la empresa marítima más importante de América del Sur. Marcó el ritmo de sus días, pero también le dio la oportunidad de soñar y concretar sus sueños.</p>
    <p>Hasta que por fin llegaron a un acuerdo. Cuando Lussich, en la última etapa de su vida, emprendió su más ambiciosa empresa: la siembra de Punta Ballena, el viento se serenó y se transformó en su aliado.</p>
    <p>Que nos abrace el viento es la historia y la leyenda de Antonio Lussich. Pero también es la historia de cientos de criollos generosos que construyeron un país para las generaciones futuras, vinieran de donde vinieran.</p>',
  awards: '',
  user: user)
book3.photo.attach(io: File.open('app/assets/images/Book_Covers/que_nos_abrace_el_viento.jpg'), filename: 'image.jpg')

book4 = Book.create!(
  title: 'Al este de la historia',
  subtitle: '100 años de Punta del Este',
  year: '2006',
  description: '<p>Punta del Este está de fiesta. Es que en julio de 2007 el balneario cumple un siglo de vida y resulta más que oportuno reeditar <i>Al este de la historia</i> en un volumen especial al que se le ha incorporado un nuevo personaje y más fotografías con el valor agregado de doce óleos del pintor uruguayo Adolfo Sayago especialmente hechos para esta edición.</p>
  <p>En estas páginas con olor a océano y bosque el lector se encontrará con Adolfo Bioy Casares, Vinicius de Moraes, Astor Piazzolla, Antonio Lussich, Leonor Uriburu de Anchorena, Rafael Alberti, Luis Alberto de Herrera, Juan Máximo Gorlero, Silvina Bullrich, Eduardo Víctor Haedo, los Behrens, María Luisa Bemberg, Arturo Frondizi, Wilson Ferreira Aldunate, Daniel Rabinovich, Amalia Lacroze de Fortabat, Carlos Páez Vilaró y Carlos Pedro Blaquier. Todos personajes que tienen muchas cosas en común. Pero quizás el rasgo que más los une es que alguna vez tomaron una piedra, la lanzaron lejos y miraron cómo se hundía en el mar mientras formulaban un sueño. Este libro busca esa piedra. Y ese sueño. ¡Por otros cien años! Que así sea. </p>',
  awards: '',
  user: user)
book4.photo.attach(io: File.open('app/assets/images/Book_Covers/Al Este de la Historia 3.jpg'), filename: 'image.jpg')

book5 = Book.create!(
  title: 'Al encuentro de las Tres Marías',
  subtitle: 'Juana de Ibarbourou más allá del mito',
  year: '2008',
  description: '<p>Nada fue como se contó. O casi nada. Una mujer hermosa y con talento que antes de cumplir los treinta años logró la fama y la gloria. Una mujer que en el ocaso de su vida decidió contemplar el mundo a través de los vidrios de una ventana. Hasta aquí la historia conocida de Juana de Ibarbourou, pero para completarla habría que hablar de una mujer inteligente y ambiciosa que supo siempre adónde quería llegar. Alguien que se enamoró más de una vez y vivió romances prohibidos. Una víctima de la violencia doméstica. ¿Una víctima de su hijo? ¿Una víctima de su entorno? Adicta a las drogas, la felicidad fue para ella un estado pasajero, que auguraba el dolor y la angustia que nunca la abandonaron. Y aun en el infierno de morfina, violencia y desamor en el que transcurrió la mayor parte de su vida, escribió versos magistrales y prosas memorables.</p>',
  awards: 'Libro de Oro en 2009',
  user: user)
book5.photo.attach(io: File.open('app/assets/images/Book_Covers/Al encuentro de las tres marías.jpg'), filename: 'image.jpg')

book6 = Book.create!(
  title: 'Qué tupé',
  subtitle: 'Batlle-Beltrán, ¿duelo o asesinato?',
  year: '2010',
  description: '<p>La muerte del diputado blanco Washington Beltrán en un duelo a pistola conmovió al Uruguay de 1920. Su contrincante no fue otro sino el ex presidente José Batlle y Ordóñez. Probablemente este duelo haya establecido una diferencia definitiva entre dos visiones de país y dos maneras de entender y ejercer la democracia.</p>
<p>Hace 90 años el Uruguay se conmovió con la muerte del diputado blanco Washington Beltrán en un duelo a pistola. Su contrincante en el lance fue el dos veces ex presidente de la República José Batlle y Ordóñez. ¿Cuánto hay de cierto en lo que nos ha llegado por tradición oral sobre ese duelo? ¿Por qué las familias Batlle y Beltrán guardaron siempre un hermético silencio acerca del episodio? ¿Por qué adoptaron la misma actitud los testigos del hecho que tiñó de sangre el Viernes Santo de 1920? La historia ha sido trasmitida de generación en generación, pero no existe un libro que haya abordado el tema en profundidad. ¿Qué intereses movían a Batlle? ¿Qué representaba Beltrán para el Partido Nacional? ¿Era el Uruguay de entonces un país verdaderamente democrático? Qué tupé es una investigación periodística en la que por primera vez salen a la luz documentos de extraordinario valor histórico, que retratan a una sociedad hipócrita, en la que los dirigentes políticos actuaban como en una logia secreta. El duelo entre Batlle y Beltrán fue quizás el episodio que marcó definitivamente dos visiones diferentes de país de las divisas tradicionales y dos maneras distintas de entender y ejercer la democracia. Con pinceladas de novela, Qué tupé es también una historia de amor. De un amor inclaudicable aun después de la muerte, capaz de desafiar las fronteras de la entrega y el perdón.</p>',
  awards: '',
  user: user)
book6.photo.attach(io: File.open('app/assets/images/Book_Covers/Que tupe.jpg'), filename: 'image.jpg')

book7 = Book.create!(
  title: 'Hasta donde me lleve la vida',
  subtitle: 'Carlos Páez Vilaró',
  year: '2011',
  description: '<p>Carlos Páez Vilaró. Hasta donde me lleve la vida es la biografía novelada del legendario artista, escrita por Diego Fischer. Recogiendo su propia voz y la de aquellos que lo conocen bien, y analizando documentos y cartas inéditos, el autor accede a lugares todavía reservados de la geografía de Páez. A 60 años de su primer lienzo, este libro desgrana las conquistas y los desvelos del popular constructor de sueños.</p>
  <p>En su juventud Páez Vilaró intuyó que el mundo era pequeño y merecía ser recorrido; decidió explorarlo. Hizo sus primeros garabatos en la plaza de Mayo de Buenos Aires cuando Perón llegaba por primera vez al poder. Encontró al candombe en los óleos de Pedro Figari y en las comparsas del barrio Sur de Montevideo. Cuando el 1 de noviembre de 1957 pisó por primera vez el lomo de la Ballena, imaginó su arte comulgando con la naturaleza y allí mismo se puso a tejer su sueño y su propia leyenda. Esculpió Casapueblo.</p>
  <p>Hoy, con 87 años, continúa asomándose a ese paisaje que no se concibe sin él. Sus anhelos, sus proezas, sus rarezas han atravesado mares y océanos. Como toda gran aventura, su vida tiene luces y sombras. Con pinceladas cuidadosamente escogidas, Diego Fischer aborda las claves de su esencia seductora y transgresora.</p>',
  awards: '',
  user: user)
book7.photo.attach(io: File.open('app/assets/images/Book_Covers/Hasta donde me lleve la vida.jpg'), filename: 'image.jpg')

book8 = Book.create!(
  title: 'A mí me aplauden',
  subtitle: 'Las historias que China no contó',
  year: '2012',
  description: '<p>A mí me aplauden es una mirada reveladora sobre una mujer que un día decidió dedicar su vida entera al arte y la filantropía. Es el retrato de China Zorrilla, una estrella que con 90 años vividos a pleno sigue brillando con la misma intensidad.</p>
  <p>¿Cuánto conocemos realmente de China Zorrilla? ¿Cuántos personajes encierra esa señora paqueta, que pudo haberse casado con un hombre de su misma clase y de fortuna, formar un hogar tradicional, tener hijos y envejecer viendo crecer a sus nietos? Se sabe: por sus venas corre sangre de artista, de su abuelo poeta y de su padre escultor, pero ¿fue eso suficiente para que, siendo una adolescente, eligiera una profesión muy mal vista en su época? Poseedora de ese don especial que solo tienen los elegidos, hizo reír con su humor refinado y conmovió en papeles dramáticos. Recorrió los escenarios más importantes del mundo para mostrar su arte y su talento. En todos cosechó aplausos y la aprobación de la crítica. ¿Qué costo tuvieron esos aplausos y esas críticas? El cine, la televisión y la radio la convirtieron en una figura de inmensa popularidad. ¿Qué dejó por el camino? ¿Qué fue de sus amores?</p>',
  awards: '',
  user: user)
book8.photo.attach(io: File.open('app/assets/images/Book_Covers/A mi me aplauden.jpg'), filename: 'image.jpg')

book9 = Book.create!(
  title: 'Serás mía o de nadie',
  subtitle: 'La verdadera muerte de Delmira Agustini',
  year: '2013',
  description: '<p>Transgredió las normas de su tiempo y se convirtió rápidamente en mito y leyenda. Su historia y la de su trágica muerte han sido contadas muchas veces. A poco de cumplirse un siglo de aquel día, Diego Fischer nos invita a que conozcamos lo que realmente sucedió con Delmira Agustini, la joven de mirada transparente que escribía poesía erótica a comienzos del siglo XX.</p>
  <p>¿Cuánta verdad hay en lo que se ha escrito y reescrito sobre Delmira? ¿Quién fue realmente Enrique Job Reyes, su marido? ¿Qué papel jugó el entorno familiar en su vida y su muerte?</p>
  <p>Basado en una investigación periodística, Serás mía o de nadie rescata documentos inéditos de Delmira y la familia Agustini que arrojan luz sobre hechos silenciados durante cien años.</p>',
  awards: '',
  user: user)
book9.photo.attach(io: File.open('app/assets/images/Book_Covers/Seras mia o de nadie.jpg'), filename: 'image.jpg')

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
  user: user)
book10.photo.attach(io: File.open('app/assets/images/Book_Covers/Tres hombres y una batalla.jpg'), filename: 'image.jpg')

book11 = Book.create!(
  title: 'Carlota Ferreira',
  subtitle: 'Retrato de una mujer que se inventó',
  year: '2015',
  description: '<p>¿Existió Carlota Ferreira? ¿O es una leyenda tejida a partir de un retrato? ¿Quién fue efectivamente esa matrona de gesto altivo y mirada desafiante que Juan Manuel Blanes inmortalizó? ¿Podía una mujer en el Uruguay del último tercio del siglo XIX jactarse de sus amoríos y aventuras? ¿Es cierto que la dueña de esa figura corpulenta fue amante del pintor y esposa de su hijo menor? ¿Qué pasiones pueden llevar a un joven a matar a su hermano por una dama quince años mayor que él?</p>
  <p><i>Carlota Ferreira. Retrato de una mujer que se inventó</i> es una investigación periodística de Diego Fischer que derriba varias leyendas y mitos. Es el descubrimiento de un mundo misterioso, por momentos sórdido y cruel, cuyos protagonistas parecen haberse puesto de acuerdo en sembrar acertijos y cubrir los hechos con una pátina amable para que la historia los recogiera con una mirada ingenua.</p>
  <p>Aquí está la historia de una mujer cuya existencia, real o ficticia, el lector deberá descubrir. Es también el retrato que Juan Manuel Blanes jamás pintó: el de un país que buscaba su identidad y una sociedad hipócrita que castigaba a sus mejores talentos.</p>',
  awards: '',
  user: user)
book11.photo.attach(io: File.open('app/assets/images/Book_Covers/Carlota Ferreira.jpg'), filename: 'image.jpg')

book12 = Book.create!(
  title: 'Mejor callar',
  subtitle: 'Escándalo y silencio de los crímenes del Prado',
  year: '2016',
  description: '<p>Tres meses después de terminada la Guerra Cívil de 1904, el Uruguay todo se conmovía con el asesinato de Celia Rodríguez Larreta a manos de su marido, Adolfo Latorre. Horas después, el propio Latorre moría de un tiro disparado por el abogado de su mujer. Los hechos, bautizados por la prensa de la época como la tragedia del Hotel del Prado, ocuparon las primeras planas de los diarios de Montevideo y Buenos Aires.</p>
  <p>¿Cuáles fueron las verdaderas razones de los dos crímenes? ¿Los hechos fueron como se contaron? ¿Qué papel cumplió en la historia Luis Alberto de Herrera? ¿Qué consecuencias politicas tendrían estas muertes? ¿Cómo era la vide de la alta sociedad montevideana del Novecientos?</p>
  <p>Mejor callar es una nueva investigación de Diego Fischer, en la que el escritor deja al descubierto hechos, personajes y tramas que permanecieron cubiertos por un manto de silencio durante más de un siglo. Mejor callar es el retrato de una sociedad cruel e hipócrita, que condenaba severamente a las mujeres que rompían las estrictas normas de la época o intentaban rebelarse contra ellas.</p>
  <p>Basado en documentos inéditos hasta hoy, el autor va encastrando las piezas de un complicado puzle en el que varias de las familias más distinguidas y acaudaladas de ambas orillas del Río de la Plata fueron víctimas y victimarias de dos crímenes cuyos reales motivos la Historia prefirió callar.</p>',
  awards: '',
  user: user)
book12.photo.attach(io: File.open('app/assets/images/Book_Covers/Mejor callar.jpg'), filename: 'image.jpg')

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
  user: user)
book13.photo.attach(io: File.open('app/assets/images/Book_Covers/El Sentir de las violetas.jpg'), filename: 'image.jpg')

book14 = Book.create!(
  title: 'Doña Cándida Saravia',
  subtitle: 'El remanso de Aparicio',
  year: '2018',
  description: '<p>Mucho se ha dicho y escrito sobre la deslumbrante figura de Aparicio. En contraste, es muy poco lo que se conoce sobre doña Cándida Díaz de Saravia, su compañera de vida y sostén espiritual.</p>
<p>Esposa cómplice, madre atenta, pilar del mundo que rodeaba a Saravia, doña Cándida fue una mujer fuerte, decidida, de convicciones claras y ternura infinita. Pero también fue la mujer que no titubeó en tomar las riendas de El Cordobés en los tiempos de guerra y manejar con mano segura los negocios familiares. Sin su apoyo incondicional y su trabajo, Aparicio no habría logrado llevar a cabo su hazaña patriótica. Ella significaba en la vida del caudillo la estabilidad, el amor y el sereno remanso imprescindible tras la batalla.</p>
<p>Este libro traza con lucidez y precisión cómo Saravia fue convirtiéndose en un protagonista clave de la vida del país. Revela detalles nunca antes señalados sobre aquella gesta, gracias a una investigación profunda de la que surgen nuevos datos y documentos antes desconocidos. A través de una narración atrapante, el lector se asomará al nítido relato de una época fundamental de nuestra historia.</p>',
  awards: '',
  user: user)
book14.photo.attach(io: File.open('app/assets/images/Book_Covers/dona-candida-saravia.jpg'), filename: 'image.jpg')

book15 = Book.create!(
  title: 'El robo de la historia',
  subtitle: 'La trama desconocida de las libras de Mailhos',
  year: '2019',
  description: '<p>En una apacible noche de abril de 1970, llamaron a la puerta de la casona en la que funcionaban las oficinas de Luis Mailhos. Araceli, la casera, atendió sin alarmarse, pues del otro lado de la puerta se encontraba un funcionario de confianza de su patrón. El hombre venía acompañado.
De esta forma dio inicio uno de los atracos más soprendentes de la historia uruguaya, cuya trascendencia llevó a la prensa a llamarlo “El robo del siglo”. El complejo plan urdido por el movimiento tupamaro para apropiarse de los lingotes y las libras de oro que se encontraban celosamente custodiados elevaron a la categoría de leyenda el accionar del grupo guerrillero.</p>
<p>Este libro relata con pormenores la historia de ese robo que marcó un antes y un después en la sociedad uruguaya. Una familia inmensamente rica, que sin embargo no hacía ostentación de su poder, era víctima de un millonario robo, y como consecuencia de éste el propio Luis Mailhos terminó procesado penalmente.</p>
<p>Con precisión de investigador y vértigo de novelista, Diego Fischer construye una trama sólida y atrapante que guiará al lector por el vértigo de una época de profundos cambios sociales, recreando la compleja urdimbre que compone nuestra identidad y señalando sus contradicciones.</p>',
  awards: '',
  user: user)
book15.photo.attach(io: File.open('app/assets/images/Book_Covers/El Robo de la Historia.jpg'), filename: 'image.jpg')

book16 = Book.create!(
  title: 'Cuando todo pase',
  year: '2020',
  description: '<p>La violación y el asesinato de dos mujeres uruguayas en Madrid es parte de un siniestro plan elaborado por las milicias rojas que, al descubrir el apoyo y la ayuda que los diplomáticos latinoamericanos les brindaban a religiosos y políticos perseguidos por el gobierno republicano, deciden enviar un sangriento mensaje.</p>
<p>Los avatares de Daniel Cibils, un joven uruguayo de la alta sociedad montevideana y sobrino del embajador de Uruguay en Madrid, que cursa sus estudios en el colegio de El Escorial, nos cautivan y nos acercan al dramático ambiente de la década de 1930.</p>
<p>La presencia de Uruguay en la fugaz República española y en el comienzo de la guerra civil fue mucho mayor de lo que la historia nos ha mostrado. Con documentación inédita, recabada en ambos lados del Atlántico, Diego Fischer relata en Cuando todo pase las tragedias, intrigas y amores que protagonizaron varios uruguayos en una España dividida, empobrecida y azotada por la crisis que desembocaría en una guerra fratricida.</p> 
<p>Cuando todo pase es una muy lograda pintura de época que comienza con la partida del lujoso transatlántico Giulio Cesare del puerto de Montevideo rumbo a Barcelona, con la ilusión de varios de sus pasajeros de conquistar Europa. Al llegar a España, en las calles de Madrid percibirán la incertidumbre y la desolación, y sufrirán las intrigas del poder que domina un país decadente que seguiría enviando a América a miles de sus hijos.</p> ',
  awards: '',
  user: user)
book16.photo.attach(io: File.open('app/assets/images/Book_Covers/Cuando todo pase.jpg'), filename: 'image.jpg')

puts 'Books finished'
=======
user = User.create!(email: 'diegofischer14@gmail.com', password: '12345678')
book1 = Book.create!(title: 'Al encuentro de las Tres Marías', year: '2008', description: 'Nada fue como se contó. O casi nada. Una mujer hermosa y con talento que antes de cumplir los treinta años logró la fama y la gloria. Una mujer que en el ocaso de su vida decidió contemplar el mundo a través de los vidrios de una ventana. Hasta aquí la historia conocida de Juana de Ibarbourou, pero para completarla habría que hablar de una mujer inteligente y ambiciosa que supo siempre adónde quería llegar. Alguien que se enamoró más de una vez y vivió romances prohibidos. Una víctima de la violencia doméstica. ¿Una víctima de su hijo? ¿Una víctima de su entorno? Adicta a las drogas, la felicidad fue para ella un estado pasajero, que auguraba el dolor y la angustia que nunca la abandonaron. Y aun en el infierno de morfina, violencia y desamor en el que transcurrió la mayor parte de su vida, escribió versos magistrales y prosas memorables.', awards: 'Libro de Oro en 2009', user: user)
>>>>>>> parent of de579a3 (Work on seeds)

puts 'All done'
