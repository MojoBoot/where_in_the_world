class AddQualityLifeToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :quality_life, :integer
  end
end
