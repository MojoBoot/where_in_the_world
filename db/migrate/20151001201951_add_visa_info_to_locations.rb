class AddVisaInfoToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :visa_info, :string
    add_column :locations, :job_info, :string
    add_column :locations, :rental_info, :string
  end
end
