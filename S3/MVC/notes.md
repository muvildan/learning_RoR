# MVC (Model-View-Controller) pattern

Separation of the presentation layer (what the user of the application sees in the browser/mobile device) and the business-logic or back-end (invisible layer).

## Models
In Rails you can use your **models** to communicate with the tables in your application. Models are resources used in your app, and they'll very likely require a persistance or database layer:
- User
- Post
- Article
- Stock 

## Views
Views make up the front-end of your application. They make the visible layer that users will see. Usually, in a standard webapp framework it'll comprise of HTML, CSS and JS. 

You'll be working with corresponding templates, like:
- home.html
- new.html
- friends.html
- my_portfolio.html

Since we're using Ruby on Rails, we'll be using the previous mentioned technologies but with a twist. Instead of using plaing HTML, we'll be using ERB templates:
- home.html.erb
- new.html.erb
- friends.html.erb
- my_portfolio.html.erb

## Controller
Controllers are also invisible to the user. They technically fall in the back-end of things. They are the bridges between the back-end and the front-end, and they serve to dictate and define how our application is going to behave logic-wise. 
- user_controller
- posts_controller
- articles_controller
- stocks_controller

## RoR project structure
```
project
│
│───app
│   └───assets
│   └───channels
│   └───controllers
│   │   └─── ...
│   │
│   └───helpers
│   └───javascript
│   └───jobs
│   └───mailers
│   └───models
│   │   └─── ...
│   │
│   └───views
│       └─── ...
│ 
│───bin
│───config
│───db
│───lib
│───log
│───node_modules
│───public
│───storage
│───test
│───tmp
│───vendor
│───.browserlistrc
│───.gitignore
│───.ruby-version
│───babel.config.js
│───config.ru
│───Gemfile
│───Gemfile.lock
│───package.json
│───postcss.config.js
│───Rakefile
│───README.md
└───yarn.lock
```
