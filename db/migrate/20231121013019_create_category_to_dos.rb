class CreateCategoryToDos < ActiveRecord::Migration[7.0]
  def change
    create_table :category_to_dos do |t|
      t.integer :category_id
      t.integer :to_do_id

      t.timestamps
    end
  end
end
