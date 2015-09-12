# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 田中家
User.create(name:'田中　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(name:'田中　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(name:'田中　孝則')
User.create(name:'田中　良子')

# 陶山家
User.create(name:'陶山　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(name:'陶山　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(name:'陶山　孝則')
User.create(name:'陶山　良子')

# 山本家
User.create(name:'山本　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(name:'山本　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(name:'山本　孝則')
User.create(name:'山本　良子')

