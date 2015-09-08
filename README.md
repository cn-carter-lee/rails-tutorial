# SPA-Tutorial
1. Create a Rails Project

    a). Create rails project, # rails new SPA-Tutorial -B -T -f

        -B Skip bundle

        -T Skip unit test
        
        -f Overwrite files that already exist

    b). add .idea/ to .gitignore if you are using RubyMine.

    c). update Gemfile, add and remove gem.

    d). # bundle

    e). create file .env on the project root, and set PATTERN_LIBRARY=qa in it. it is for the_knot_layout .

    f). update application.html.erb for applying tk layout.

    g). create a new controller and set it as root, for example HomeController.

    h). remove jquery & jquery_ujs reference from application.js

    i). # rails s , and visit http://localhost:3000, you should be a page with theknot header and footer.

2. Setup jasmine

    a). # rails generate jasmine_rails:install

    b). add a simple spec for testing.

    c). # RAILS_ENV=test rake spec:javascript

3. Setup Backbone & Backbone.Marionette (here we are going to use bower to install Backbone.Marionette)

    a). on path vendor/assets/javascript/, # bower install backbone.marionette

    b). add backbone & backbone.marionette js reference in application.js

4. Create a simple Backbone & Backbone.Marionette example

    a). set the_knot_layout as the third-party model.

        i.  set <%= render template: "layouts/the_knot/modal" %> in application.html.erb

        ii. set THIRD_PARTY_APP=true in .env

    b). build example