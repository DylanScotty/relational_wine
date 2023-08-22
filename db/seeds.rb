# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

winery_1 = Winery.create(name: "Castello di Amorosa", location: "California", employees: 48, still_active: true)
winery_1.wines.create(name: "Voyager Vineyard", abv: 15, still_available: true)
winery_1.wines.create(name: "Chardonnay", abv: 14, still_available: true)
winery_1.wines.create(name: "La Fantasia", abv: 7, still_available: false)
winery_1.wines.create(name: "Zingaro", abv: 15, still_available: true)

winery_2 = Winery.create(name: "Catena Zapata", location: "Argentina", employees: 29, still_active: true)
winery_2.wines.create(name: "Catena Chardonnay", abv: 13, still_available: true)
winery_2.wines.create(name: "Catena Alta Malbec", abv: 14, still_available: false)
winery_2.wines.create(name: "Catena Sauvignon", abv: 13, still_available: true)


winery_3 = Winery.create(name: "Sebastiani", location: "California", employees: 12, still_active: false)
winery_3.wines.create(name: "Sebastiani Rose", abv: 14, still_available: false)
winery_3.wines.create(name: "Sebastiani Moscato", abv: 12, still_available: true)
winery_3.wines.create(name: "Sebastiani Chardonnay", abv: 13, still_available: false)
winery_3.wines.create(name: "Sebastiani Sauvignon Blanc", abv: 14, still_available: true)
winery_3.wines.create(name: "Sebastiani Barbera", abv: 14, still_available: true)

winery_4 = Winery.create(name: "Montes", location: "Chile", employees: 26, still_active: true)
winery_4.wines.create(name: "Tatia", abv: 13, still_available: true)
winery_4.wines.create(name: "Montes Folly", abv: 10, still_available: true)
winery_4.wines.create(name: "Purple Angel", abv: 13, still_available: true)
winery_4.wines.create(name: "Outer Limits", abv: 12, still_available: true)