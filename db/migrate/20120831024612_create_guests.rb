class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|	
      t.string :gt_id
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
