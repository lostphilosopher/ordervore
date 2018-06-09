# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Restaurants...'

restaurants = [
  {
    name: 'Chipotle',
    menu_url: 'https://www.chipotle.com/menu',
    website: 'https://www.chipotle.com/'
  },
  {
    name: "McDonald's",
    menu_url: 'https://www.mcdonalds.com/us/en-us/full-menu.html',
    website: 'https://www.mcdonalds.com/us/en-us.html'
  },
  {
    name: 'Starbucks',
    menu_url: 'https://www.starbucks.com/menu',
    website: 'https://www.starbucks.com/'
  },
  {
    name: 'Caribou',
    menu_url: 'https://www.cariboucoffee.com/menu-nutrition',
    website: 'https://www.cariboucoffee.com/'
  },
  {
    name: 'Noodles World Kitchen',
    menu_url: 'https://www.noodles.com/menu/',
    website: 'https://www.noodles.com/'
  },
  {
    name: 'Pizza Luce',
    menu_url: 'https://pizzaluce.com/menu/',
    website: 'https://pizzaluce.com/'
  },
  {
    name: "Domino's",
    menu_url: 'https://www.dominos.com/en/pages/order/menu.jsp#/menu/category/viewAll/',
    website: 'https://www.dominos.com/en/'
  },
  {
    name: 'Subway',
    menu_url: 'http://www.subway.com/en-us/menunutrition/menu',
    website: 'https://www.subway.com/'
  },
  {
    name: "Jimmy John's",
    menu_url: 'https://www.jimmyjohns.com/menu/#/',
    website: 'https://www.jimmyjohns.com/'
  },
  {
    name: 'Piada',
    menu_url: 'https://mypiada.com/',
    website: 'https://mypiada.com/'
  },
  {
    name: 'Culvers',
    menu_url: 'https://www.culvers.com/',
    website: 'https://www.culvers.com/menu-and-nutrition'
  },
  {
    name: 'Burger King',
    menu_url: 'https://www.bk.com/menu',
    website: 'https://www.bk.com/'
  },
  {
    name: "Dunkin' Donuts",
    menu_url: 'https://www.dunkindonuts.com/en/food-drinks',
    website: 'https://www.dunkindonuts.com/en'
  }
]

restaurants.each do |restaurant|
  r = Restaurant.find_by(name: restaurant[:name])
  if r
    r.update(restaurant)
  else
    Restaurant.create(restaurant)
  end
end

puts "#{ENV['HEROKU_ENV']}"
