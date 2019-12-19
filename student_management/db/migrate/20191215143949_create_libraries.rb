class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.integer :stdno
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
