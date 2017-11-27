# FoodStuff

FoodStuff is a simple and fully functional blogging app built using Ruby on Rails.

**Current Features:**

 * Create new account
 * Log in
 * Publish new posts
 * Comment on posts
 * Edit or remove your own comments and posts
 * Edit user profile

**Resources used:**

  * [RailsGuides - Getting Started with Rails](http://guides.rubyonrails.org/getting_started.html)
  * [Ruby on Rails Tutorial](https://www.railstutorial.org/)
  * [Rails Generator Cheat Sheet](http://bshap27.github.io/2015/03/15/Generators-Cheat-Sheet.html) by [Becca Shapiro](https://github.com/bshap27)
  * [Bootstrap](https://getbootstrap.com/docs/4.0/getting-started/introduction/)
  * [Unsplash](https://unsplash.com/)

## Try FoodStuff yourself!
  **Built with:**

  * Rails v. 5.1.4
  * Ruby v. 2.4.2
  * SQLite v. 3.19.3


**Run on your computer:**


From your project folder, clone the git repository:

	git clone https://github.com/natalietate/rails-blog.git

Open the project folder:

	cd rails-blog

Install all dependencies:

	bundle install

Create and seed the database:

	rake db:migrate
	rake db:seed

Run the application:

	rails server

To see the application in action, open a browser window and navigate to [http://localhost:3000](http://localhost:3000).

**Sample Account**

You can sign in to a demo account with the following credentials:

| Email        | Password           
| ------------- |:---------:|
| test@test.com | password  |
