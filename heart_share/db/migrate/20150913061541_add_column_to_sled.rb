class AddColumnToSled < ActiveRecord::Migration
  def change
    add_column :sleds, :comment, :string
  end
end
