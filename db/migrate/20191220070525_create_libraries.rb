class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :lib_type
      t.string :bk_category

      t.timestamps
    end
  end
end
