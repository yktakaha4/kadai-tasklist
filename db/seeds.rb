# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

status_list = ['ready', 'doing', 'done', 'onhold']
(1..5).each do |user_number|
  user = User.create(name: 'user' + user_number.to_s, email:'user' + user_number.to_s + '@test.com', 'password': 'user' + user_number.to_s)
  (1..(10 * user_number)).each do |number|
    user.tasks.create(content: user.name + 'のタスクその' + number.to_s, status: status_list[number % status_list.size])
  end
end
