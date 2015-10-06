# == Schema Information
#
# Table name: corkboards
#
#  id          :integer          not null, primary key
#  title       :string
#  comment     :text
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Corkboard < ActiveRecord::Base
  belongs_to :location
  has_one :user
end
