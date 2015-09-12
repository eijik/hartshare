# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.new(name:'田中　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.new(name:'田中　花子', image:open(Rails.root.join('db/images/img2.jpeg')))

