puts "OH NO YOU BROKE IT"
puts "Deleting all data"
###Boardgame.destroy_all
Category.destroy_all
Mechanic.destroy_all
FavoriteCategory.destroy_all
FavoriteMechanic.destroy_all
InventoryRecord.destroy_all
User.destroy_all
WishlistRecord.destroy_all
puts "You didn't really break it - but the existing data was really deleted."

puts "🌱 Seeding spices..."
u1 = User.create(name: "Davery", email: "test@gmail.com")

b1 = Boardgame.create(name: "Monopoly", url:"http://www.google.com", price_usd:55.55, msrp:60.00, year_published: 1970,
                        min_players: 2, max_players: 8, min_playtime: 60, max_playtime: 600, min_age: 10, description_preview: "Ruining family game nights since 1970",
                        description: "Ruining family game nights since 1970", commentary: "People always play this wrong.", faq: "Yes, it's possible to run out of houses - that's the 'Monopoly' element.",
                        thumb_url: "http://www.google.com", image_url: "http://www.google.com", publisher: "ur mom", designer: "ur dad", artist: "Bob Ross", 
                        learning_complexity: 2.03, strategy_complexity: 2.5, bga_rating: 1.3)

c1 = Category.create(category_name: "pirates", boardgame_id: b1.id)

m1 = Mechanic.create(mechanic_name: "dice", boardgame_id: b1.id)

fav_c1 = FavoriteCategory.create(user_id: u1.id, category_id: c1.id)

fav_m1 = FavoriteMechanic.create(user_id: u1.id, mechanic_id: m1.id)

inv1 = InventoryRecord.create(boardgame_id: b1.id, user_id: u1.id)

w1 = WishlistRecord.create(boardgame_id: b1.id, user_id: u1.id)


puts "✅ Done seeding!"
