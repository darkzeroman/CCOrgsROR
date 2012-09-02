class AddOrgsUsersJoinTable < ActiveRecord::Migration
  def up
  	create_table :orgs_users, :id=> false do |t|
  		t.integer :org_id
  		t.integer :user_id
  	end
  end

  def down
  	drop_table :orgs_users
  end
end
