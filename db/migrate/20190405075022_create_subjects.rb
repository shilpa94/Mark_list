class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.integer :mark

      t.timestamps
    end
  end
end
