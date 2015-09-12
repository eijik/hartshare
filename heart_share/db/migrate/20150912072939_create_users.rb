class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.integer :home_id
      t.integer :group_id

      t.timestamps null: false
    end
  end
end
