class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.text   :description
      t.text :permalink
      t.timestamps
    end
  end
end
