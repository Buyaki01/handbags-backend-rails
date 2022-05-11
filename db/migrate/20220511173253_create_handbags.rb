class CreateHandbags < ActiveRecord::Migration[7.0]
  def change
    create_table :handbags do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.decimal :price
      t.timestamps
    end
  end
end
