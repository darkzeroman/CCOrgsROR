# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

org = Org.new(:name => 'First Org', :description => 'First Org Description', :permalink => "First")
Org.create(:name => 'Second Org', :description => 'Second Org Description', :permalink => "Second")

event = Event.new(:title=>'First Event', :description => 'Description', :location=>'Klaus')

org.events << event

org.save
event.save

admin = User.create(:first_name => 'Vidhur', :last_name => 'Vohra', :gt_user_id => 'admin', :password => 'password', :is_admin => true)
new_user = User.create(:first_name => 'Vidhur', :last_name => 'Vohra', :gt_user_id => 'darkzeroman', :password => 'password', :is_admin => true)
