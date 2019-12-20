class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :acc_no
      t.string :acc_type
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
