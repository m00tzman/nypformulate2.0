class AddItemToSkids < ActiveRecord::Migration
  def change
    add_column :skids, :product, :string
  end
end
