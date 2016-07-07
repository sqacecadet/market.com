class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.integer :price
      t.references :TypePartner, foreign_key: false
      t.references :documents, foreign_key: false

      t.timestamps
    end
  end
end
