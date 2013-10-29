class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.string :gender

      t.timestamps
    end
  end
end
