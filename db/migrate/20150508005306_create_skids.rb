class CreateSkids < ActiveRecord::Migration
  def change
    create_table :skids do |t|
      t.string :number
      t.string :po
      t.string :cases
      t.string :weight

      t.timestamps null: false
    end
  end
end
