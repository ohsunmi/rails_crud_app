class Student < ActiveRecord::Base
  attr_accessible :age, :name, :teachers

  has_and_belongs_to_many :teachers
end
