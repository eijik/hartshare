# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# グループ（地域）
group_a = Group.create(name:'A地区')
group_b = Group.create(name:'B地区')

# 田中家
home_at_tanaka = Group.create(name:'田中家')
tanaka_tarou = User.create(group:group_a, home:home_at_tanaka, name:'田中　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(group:group_a, home:home_at_tanaka, name:'田中　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(group:group_a, home:home_at_tanaka, name:'田中　孝則')
User.create(group:group_a, home:home_at_tanaka, name:'田中　良子')

# 陶山家
home_at_suyama = Group.create(name:'陶山家')
User.create(group:group_b, home:home_at_suyama, name:'陶山　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(group:group_b, home:home_at_suyama, name:'陶山　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(group:group_b, home:home_at_suyama, name:'陶山　孝則')
User.create(group:group_b, home:home_at_suyama, name:'陶山　良子')

# 山本家
home_at_yamamoto = Group.create(name:'山本家')
User.create(home:home_at_yamamoto, name:'山本　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(home:home_at_yamamoto, name:'山本　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(home:home_at_yamamoto, name:'山本　孝則')
User.create(home:home_at_yamamoto, name:'山本　良子')

# 原田家
home_ata_harada = Group.create(name:'原田家')
User.create(home:home_at_yamamoto, name:'原田　太郎', image:open(Rails.root.join('db/images/img.jpeg')))
User.create(home:home_at_yamamoto, name:'原田　花子', image:open(Rails.root.join('db/images/img2.jpeg')))
User.create(home:home_at_yamamoto, name:'原田　孝則')
User.create(home:home_at_yamamoto, name:'原田　良子')

# *** 以下データ ***

# 田中太郎さんが田中家向けに投稿したもの
Sled.create(creator:tanaka_tarou, file:open(Rails.root.join('db/images/photo.jpeg')), sled_groups:[SledGroup.new(group:home_at_tanaka)])
Sled.create(creator:tanaka_tarou, file:open(Rails.root.join('db/images/photo2.jpeg')), sled_groups:[SledGroup.new(group:home_at_tanaka)])

# 田中太郎さんが地域向けに投稿したもの
Sled.create(creator:tanaka_tarou, file:open(Rails.root.join('db/images/photo3.jpeg')), sled_groups:[SledGroup.new(group:group_a), SledGroup.new(group:group_b)])


