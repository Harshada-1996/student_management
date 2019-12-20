class CreateBook1s < ActiveRecord::Migration[5.2]
  def change
    create_table :book1s do |t|
      t.integer :rake_no
      t.integer :book_no
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
