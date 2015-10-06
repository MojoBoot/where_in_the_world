class AddNationToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :nation, :string
  end
end
