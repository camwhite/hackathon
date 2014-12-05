angular-rails template
======================

A starter template for projects utilizing an AngularJS front end with a Ruby on Rails API back end.  This template includes user login & registration features. All Rails code is stored in the 'server' folder, and all AngularJS code is stored in the 'client' folder.  The front-end code is based on Yeoman's 'angular' template.

Dependencies
============
You must have the following items installed:

- Ruby v2.1
- Rails v4.1
- Bower
- Grunt
- Grunt cli
- npm
- SQLite3 (or other database configured in server/config/database.yml)

Installation
============

Clone this repository into <folder>, then do the following:

* Build & start back-end:
1. cd <folder>/server
2. bundle install
3. rake db:create
4. rake db:migrate
5. rails s (to start)

* Build & start front-end:
1. cd .. (to return to <folder>)
2. cd client
3. bower install
4. (sudo) npm install
5. grunt serve (to start)
