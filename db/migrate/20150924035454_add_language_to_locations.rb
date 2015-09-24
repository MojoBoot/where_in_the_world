class AddLanguageToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :language, :string
  end
end
