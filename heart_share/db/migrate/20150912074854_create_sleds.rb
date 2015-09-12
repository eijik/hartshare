class CreateSleds < ActiveRecord::Migration
  def change
    create_table :sleds do |t|
      t.string :file
      t.timestamps null: false
    end
  end
end
