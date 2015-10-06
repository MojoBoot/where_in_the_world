class AddCostsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :rent, :integer
    add_column :locations, :disp_money, :integer
    add_column :locations, :utilities, :integer
    add_column :locations, :trans, :integer
    add_column :locations, :meal_cost, :decimal
    add_column :locations, :wine_cost, :decimal
    add_column :locations, :cheese_cost, :decimal
    add_column :locations, :orange_cost, :decimal
    add_column :locations, :bread_cost, :decimal
    add_column :locations, :cappuccino_cost, :decimal
  end
end
