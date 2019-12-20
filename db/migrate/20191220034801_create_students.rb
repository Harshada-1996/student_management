class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :sur_name
      t.string :s_location
      t.references :standard, foreign_key: true

      t.timestamps
    end
  end
end
