class CreateSledGroups < ActiveRecord::Migration
  def change
    create_table :sled_groups do |t|
      t.integer :sled_id
      t.integer :group_id
      t.timestamps null: false
    end
  end
end
