class School < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :teachers
end
