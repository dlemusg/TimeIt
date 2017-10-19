class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
