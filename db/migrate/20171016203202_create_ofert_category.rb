class CreateOfertCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :ofert_categories do |t|
    	t.integer :idCategoria
    	t.integer :idOferta
    	t.timestamps
    end
  end
end
