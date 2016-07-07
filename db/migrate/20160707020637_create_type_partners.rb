class CreateTypePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :type_partners do |t|
      t.integer :type
      t.string :description
      t.references :documents, foreign_key: true

      t.timestamps
    end
  end
end
