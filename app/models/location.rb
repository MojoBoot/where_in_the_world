# == Schema Information
#
# Table name: locations
#
#  id             :integer          not null, primary key
#  continent      :string
#  population     :integer
#  image          :string
#  description    :text
#  happiness      :integer
#  economic_index :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  language       :string
#  country        :string
#  city           :string
#

class Location < ActiveRecord::Base
  has_many :corkboards
  has_many :users, through: :corkboards

  # def find_location
  #

  end
