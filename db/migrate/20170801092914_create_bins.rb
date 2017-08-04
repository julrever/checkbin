class CreateBins < ActiveRecord::Migration[5.1]
  def change
    create_table :bins do |t|
      t.integer :bin
      t.string :brand
      t.string :typecard
      t.string :category
      t.string :bank
      t.string :bankurl
      t.string :country
      t.string :cshort
      t.float :latitude
      t.float :longitude

      t.timestamps
    end

  end
end
