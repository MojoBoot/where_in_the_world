# == Schema Information
#
# Table name: locations
#
#  id              :integer          not null, primary key
#  continent       :string
#  population      :integer
#  image           :string
#  description     :text
#  happiness       :integer
#  economic_index  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  language        :string
#  city            :string
#  nation          :string
#  visa_info       :string
#  job_info        :string
#  rental_info     :string
#  rent            :integer
#  disp_money      :integer
#  utilities       :integer
#  trans           :integer
#  meal_cost       :decimal(, )
#  wine_cost       :decimal(, )
#  cheese_cost     :decimal(, )
#  orange_cost     :decimal(, )
#  bread_cost      :decimal(, )
#  cappuccino_cost :decimal(, )
#

class Location < ActiveRecord::Base
  has_many :corkboards
  has_many :users, through: :corkboards

# Location.find_by_city(params[:search])

def self.search(query)
  where(:city, query)
  end


  end
