class Teacher < ActiveRecord::Base
  attr_accessible :gender, :name, :subject, :students

  belongs_to :school
  has_and_belongs_to_many :students
end
