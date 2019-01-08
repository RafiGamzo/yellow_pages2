class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
