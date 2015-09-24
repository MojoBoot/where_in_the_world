class CreateCorkboards < ActiveRecord::Migration
  def change
    create_table :corkboards do |t|
      t.string :title
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
