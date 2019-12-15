class CreateStandards < ActiveRecord::Migration[5.2]
  def change
    create_table :standards do |t|
      t.string :class
      t.string :section

      t.timestamps
    end
  end
end
