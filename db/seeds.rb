# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.new
u1.username = 'sheraz'
u1.email = 'sheraz.ali342@gmail.com'
u1.password = '12345678'
u1.password_confirmation = '12345678'
u1.save


u2 = User.new
u2.username = 'norbulingka'
u2.email = 'norbulingka@gmail.com'
u2.password = 'N0rBu1in6ka'
u2.password_confirmation = 'N0rBu1in6ka'
u2.save

Volume.create([
  {no: 1, title: "Volume 1"},
  {no: 2, title: "Volume 2"},
  {no: 3, title: "Volume 3"},
  {no: 4, title: "Volume 4"},
  {no: 5, title: "Volume 5"},
  {no: 6, title: "Volume 6"},
  {no: 7, title: "Volume 7"},
  {no: 8, title: "Volume 8"},
  {no: 9, title: "Volume 9"},
  {no: 10, title: "Volume 10"},
  {no: 11, title: "Volume 11"},
  {no: 12, title: "Volume 12"},
  {no: 13, title: "Volume 13"},
  {no: 14, title: "Volume 14"},
  {no: 15, title: "Volume 15"},
  {no: 16, title: "Volume 16"},
  {no: 17, title: "Volume 17"},
  {no: 18, title: "Volume 18"},
  {no: 19, title: "Volume 19"},
  {no: 20, title: "Volume 20"}
  ])
