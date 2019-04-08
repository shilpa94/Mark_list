class AddMarkToStudentSubject < ActiveRecord::Migration[5.2]
  def change
    add_column :student_subjects, :mark, :integer
  end
end
