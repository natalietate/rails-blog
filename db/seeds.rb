# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#


User.create(
  name: 'Test',
  email: 'test@test.com',
  password: 'testing',
  password_confirmation: 'testing'
)

User.create(
  name: 'Natalie',
  email: 'martin.nat@gmail.com',
  password: 'password',
  password_confirmation: 'password'
)

Post.create(
  title: 'My very first post',
  text: 'This is the text of my first post',
  user_id: 1
)
Post.create(
  title: 'Okay, here\'s a post',
  text: 'More about the post!',
  user_id: 2
)
Comment.create(
  body: 'The comment I\'ve made',
  post_id: 1,
  user_id: 2
)
