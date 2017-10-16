class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
