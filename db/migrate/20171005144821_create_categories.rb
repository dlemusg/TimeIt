class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null:false
      t.string :descripcion
      t.string :imagen
      t.timestamps
    end
  end
end
