class CreateSpecies < ActiveRecord::Migration[5.2]
  def change
    create_table :species do |t|
      t.string :species
      t.references :region, foreign_key: true

      t.timestamps
    end
  end
end
