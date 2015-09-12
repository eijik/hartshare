class CreateSleds < ActiveRecord::Migration
  def change
    create_table :sleds do |t|
      t.string :file
      t.integer :creator_id
      t.timestamps null: false
    end
  end
end
