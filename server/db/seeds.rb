# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
testuser = User.new
testuser.email = 'member@test.com'
testuser.password = 'memberlongpassword'
testuser.role = 'member'
testuser.password_confirmation = 'memberlongpassword'
testuser.confirmed_at = Time.zone.now
testuser.provider = 'email'
testuser.save!(:validate =>false)

testtran = User.new
testtran.email = 'translator@test.com'
testtran.password = 'translatorlongpassword'
testtran.role = 'translator'
testtran.password_confirmation = 'translatorlongpassword'
testtran.confirmed_at = Time.zone.now
testtran.provider = 'email'
testtran.save!

testadmin = User.new
testadmin.email = 'admin@test.com'
testadmin.password = 'adminlongpassword'
testadmin.role = 'translator'
testadmin.password_confirmation = 'adminlongpassword'
testadmin.confirmed_at = Time.zone.now
testadmin.provider = 'email'
testadmin.save!
