class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :continent
      t.integer :population
      t.string :image
      t.text :description
      t.integer :happiness
      t.integer :economic_index

      # t.references :, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
