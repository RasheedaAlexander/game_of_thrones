# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Character.destroy_all
House.destroy_all

arryn = House.create(name:"Arryn", banner_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/1/15/House-Arryn-Main-Shield.PNG/revision/latest?cb=20160312101451", quote: "As High as Honor")
frey = House.create(name:"Frey", banner_url:"http://vignette1.wikia.nocookie.net/gameofthrones/images/e/e6/House-Frey-Main-Shield.PNG/revision/latest?cb=20160312124244", quote: "We Stand Together")
greyjoy = House.create(name:"Greyjoy", banner_url:"http://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20160312122204", quote: "What Is Dead May Never Die")
lannister = House.create(name:"Lannister", banner_url:"http://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20151207184048", quote: "A Lannister Always Pays His Debts")
stark = House.create(name:"Stark", banner_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20160703180116", quote: "Winter is Coming")
targaryen = House.create(name:"Targaryen", banner_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20151209185148", quote: "Fire and Blood")
tyrell = House.create(name:"Tyrell", banner_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20151209185350", quote: "Growing Strong")


robin_arryn = Character.create(name: "Robin Arryn", img_url:"http://vignette4.wikia.nocookie.net/gameofthrones/images/7/74/Robin_Aaryn_Book_of_Stranger.jpg/revision/latest?cb=20160714005525", house: arryn)
lysa_arryn = Character.create(name: "Lysa Arryn", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/3/3c/Lysa.jpg/revision/latest?cb=20110531033830", house: arryn)
jon_arryn = Character.create(name: "Jon Arryn", img_url:"http://vignette2.wikia.nocookie.net/gameofthrones/images/7/7a/Jon_Arryn_funeral_bier.jpg/revision/latest?cb=20120520000749", house: arryn)
