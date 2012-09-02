class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gt_id
      t.string :gt_user_id
      t.boolean :is_admin
      t.string :password
      t.timestamps
    end
  end
end
