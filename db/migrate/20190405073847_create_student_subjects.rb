class CreateStudentSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :student_subjects do |t|
      t.integer :student_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
