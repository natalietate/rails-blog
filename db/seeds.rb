# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
User.destroy_all

User.create(
  name: 'Sam (home cook)',
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  name: 'Ina Garten',
  email: 'ina@test.com',
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  name: 'Anthony Bourdain',
  email: 'anthony@test.com',
  password: 'password',
  password_confirmation: 'password'
)
User.create(
  name: 'Alton Brown',
  email: 'alton@test.com',
  password: 'password',
  password_confirmation: 'password'
)

Post.create(
  title: 'How should I cook my turkey?',
  text: 'I have a 20 pound turkey, but how do I cook it? I heard you can deep fry it or use a roasting bag in the oven. Should I cook the stuffing inside of my turkey?',
  user_id: 1
)
Post.create(
  title: 'Favorite cheese?',
  text: 'Hello friends, Jeffry and I have been discussing this as of late. Which cheese do you prefer when you\'re having friends over for dinner?',
  user_id: 2
)
Post.create(
  title: 'New head chef, not sure what to think.',
  text: 'I come in today to do food ordering and office work, and he\'s not here. We give him a call finally and he just says something came up and he\'ll be in tomorrow.I\'ve been hoping for the best, but the first 4 days have left a lot of bad impressions. He just seems way too full of himself. What do you think?',
  user_id: 3
)

Post.create(
  title: 'Do me a favor: Please clean your grill.',
  text: 'Your grill grate better be squeaky clean or food will absolutely, positively stick (especially high-protein items like meat). Not only will sticking badly damage the food, it removes those groovy (literally) grill marks.',
  user_id: 4
)

Comment.create(
  body: 'Whatever you do, don\'t cook the stuffing inside of the turkey!',
  post_id: 1,
  user_id: 4
)

Comment.create(
  body: 'Cheddar, parmesan, gruyere, and my favorite of all, manchego.',
  post_id: 2,
  user_id: 4
)
Comment.create(
  body: 'I like American cheese!',
  post_id: 2,
  user_id: 1
)
Comment.create(
  body: 'The guy above is nuts. Who eats American cheese over the age of 5? My favorite cheeses are from around the world, like mozarella straight from Italy.',
  post_id: 2,
  user_id: 3
)
