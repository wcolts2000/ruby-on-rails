# README

* Ruby version: 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]

---

# Rails CheatSheet

## Steps to creating rails crud app 

1. Create app in terminal via `rails new <apps name>` note: you can add `-d mysql`
to the end to use a mysql database or change to another if you don't want to use
sqlite3 by default

1. move into the newly created directory via `cd <app name>` 

1. Install gem dependencies via `bundle install` note: if you get an error try
running `bundle exec <command that failed>`

1. Create a dbs scaffolding i.e. generating a users table with email and password
fields via `rails generate scaffold User password:string email:string`

1. Create the db tables via `rake db:migrate`

1. Start the local rails server via `rails s`

1. Open your browser and navigate to `localhost:3000` to visit your rails app

1. Generate an Article scaffolding via `rails generate scaffold Article title:string post:text user_id:integer`

1. To add vaildation for forms add options to the model, i.e. adding the
following validation checks to users.rb model 
    ```ruby
      validates :password, presence: true, length: { minimum: 8 }
      validates :email, presence: true
    ```

1. After adding new tables you need to run `rake db:migrate` again

1. Manually add connections between components db tables like seen here
    ```ruby
    has_many :articles # Added to the users.rb Model
    belongs_to :user # Added to the article.rb Model
    ```

1. Adding new comment model via `rails generate model Comment commenter:string body:text article:references` the `article:references` will automaticaly make the connections (foreign keys) to the articles table for you.

1. Run `rake db:migrate` again

1. Nest comments inside articles routes in the routes.rb file by appending `do resources :comments` so the routes will look like below:
    ```ruby
    Rails.application.routes.draw do
      resources :articles do
        resources :comments
      end
      resources :users
    end
    ```

1. REMOVING A CONTROLLER: say you created a controllerfor the comments via
`rails generate controller Comment` but wanted it to be `Comments`.
Use`rails destroy controller comment` then generate the appropriately named controller

1. Add comments to article.rb Model so it reads as follows:
    ```ruby
    class Article < ApplicationRecord
      belongs_to :user
      has_many :comments
      validates :title, presence: true, length: { maximum: 50 }
      validates :post, presence: true
    end
    ```

1. Add styles in the `/app/assets/stylesheets` directories appropriate scss file
    - You can alternate classes in lists using cycle as seen here: `<tr class="<%=  cycle('list_line_odd', 'list_line_even')%>">`