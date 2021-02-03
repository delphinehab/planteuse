puts "destroying all bookings"
Booking.destroy_all

puts "destroying all products"
Product.destroy_all

puts "destroying all plants"
Plant.destroy_all

puts "destroying all categories"
Category.destroy_all

puts "destroying all users"
User.destroy_all

puts "create users"
delphine = User.create! email: 'delphine@gmail.com', password: '123456'

puts "create categories"
urticacees = Category.create! name: "urticacées"
lamiacees = Category.create! name: "lamiacées"
liliaceae = Category.create! name: "liliaceae"

puts "create plants"
pilea = Plant.create! :name => "pilea", :category_id => urticacees.id, :description => "Plante succulente d’intérieur, le piléa est originaire de Chine, elle est number 1 des plantes tendances d’appartement. Ses feuilles rondes brillantes et d’un vert éclatant lui doivent son surnom de « plante à monnaie ».", :maintenance => "Ne pas laisser l’eau stagner dans la soucoupe sous le pot. Les feuilles ont tendance à se tourner vers la lumière, faire pivoter la plante régulièrement est primordial pour préserver sa tenue. Pendant la croissance du piléa, ses feuilles du bas jaunissent et tombent, quand de nouvelles apparaissent en haut, cela est parfaitement normal.", :watering => "Arroser une à deux fois par semaine, à petite dose. La terre ne doit ni baigner dans l’eau, ni devenir ultra-sèche. Le piléa apprécie la vaporisation, plus généralement les lieux humides.", :sun_exhibition => "Cette plante ne doit pas être exposée directement aux rayons du soleil, elle supporte l'obscurité.", :indoor => true, :cutting => "Attendre que le piléa crée des rejets au niveau de ses racines. Une fois qu’il y a 4-5 feuilles apparentes sur un rejet, soit 6-7cms de tige, couper le rejet bien à la racine et le plonger dans l’eau entre une et deux semaines puis planter votre nouveau bébé!"
chlorophytum = Plant.create! :name => "chlorophytum", :category_id => liliaceae.id
coleus = Plant.create! :name => "coleus", :category_id => lamiacees.id
sanseviera = Plant.create! :name => "sanseviera", :category_id => liliaceae.id

puts "create products"
pileaS = Product.create! size: "S", :plant_id => pilea.id

puts "create bookings"
booking1 = Booking.create! product_id: pileaS.id, user_id: delphine.id

