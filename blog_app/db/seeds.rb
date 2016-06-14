# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(email: 'TomBrady@patriots.com', password: 'passking')
u2 = User.create(email: 'PeytonManning@sucker.com', password: 'password')

p1 = u1.posts.create(title: 'Firsty McPost', body: 'Pats rock and other stuff')
p2 = u1.posts.create(title: 'Secondy Posty', body: 'New England is still awesome')

p3 = u2.posts.create(title: 'HgH Post', body: 'Anybody got PEDs?')
p4 = u2.posts.create(title: 'Superbowl fail', body: 'I won, but still lost.')

p3.comments.create(body: "You're an idiot", user: u1)
p4.comments.create(body: "Ya, you were kinda terrible", user: u1)
