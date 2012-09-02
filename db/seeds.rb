# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

org = Org.new(:name => 'First Org', :description => 'First Org Description', :permalink => "First")
Org.create(:name => 'Second Org', :description => 'Second Org Description', :permalink => "Second")

#  attr_accessible :description, :end_time, :location, :start_time, :title #:startDate => DateTime.parse("09/14/2009 8:00") 
event = Event.new(:title=>'First Event', :description => 'Description', :location=>'Klaus', 
	:start_time => DateTime.parse("09/02/2012 8:00"), :end_time => DateTime.parse("09/02/2012 9:00"))

org.events << event

org.save
event.save
#attr_accessible :email, :first_name, :last_name, :gt_id, :gt_user_id, :is_admin, :password

admin = User.create(:first_name => 'Vidhur', :last_name => 'Vohra', :gt_user_id => 'admin', 
	:password => 'password', :email => "blah@lol.com", :gt_id => "9023", :is_admin => true)
new_user = User.create(:first_name => 'Vidhur', :last_name => 'Vohra', :gt_user_id => 'darkzeroman', :password => 'password',
 	:email => "blah@lol.com", :gt_id => "9023", :is_admin => true)
