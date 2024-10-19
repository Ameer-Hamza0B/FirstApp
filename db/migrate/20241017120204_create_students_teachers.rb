class CreateStudentsTeachers < ActiveRecord::Migration[7.2]
  def change
    create_table :students_teachers do |t|
      t.references :teacher, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
