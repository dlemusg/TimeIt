class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true
      t.integer :idDemandante
      t.timestamps
    end
  end
end
