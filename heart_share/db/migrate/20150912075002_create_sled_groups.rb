class CreateSledGroups < ActiveRecord::Migration
  def change
    create_table :sled_groups do |t|

      t.timestamps null: false
    end
  end
end
