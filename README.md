A mobile web application where you can manage your budget: you have a list of transactions associated with a category, so that you can see how much money you spent and on what.

## Built With
- Ruby on Rails
- PostgreSQL
- Live Link
- Getting Started
To get a local copy up and running follow these simple example steps.

## Prerequisites
- Ruby
- Rails
- Setup
- Make sure you have Ruby on Rails set up properly on your computer
- Clone or download this repo on your machine
- Enter project directory
- Install
- bundle install
- Database

# Create user
sudo -u postgres createuser recipe_app -s

# Create the database
rails db:create

## Apply migration
rails db:migrate

# Load the schema
rails db:schema:load
Run
rails s
Test
rspec
Troubleshoot

### Rspec failing
RAILS_ENV=test rake db:reset

### New Scaffold
rails g scaffold_controller model

### Undo migration
rake db:migrate VERSION=0

Author
👤 Olipliche Mavoungou Paka

GitHub: @githubhandle
Twitter: @twitterhandle
LinkedIn: LinkedIn

🤝 Contributing
Contributions, issues, and feature requests are welcome!

Feel free to check the issues page.

Show your support
Give a ⭐️ if you like this project!

Acknowledgments
Microverse
Original design idea by Gregoire Vella on Behance.
License
MIT