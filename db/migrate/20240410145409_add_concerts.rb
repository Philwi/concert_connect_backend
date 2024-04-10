class AddConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.datetime :date, null: false
      t.float :price
      t.string :bands, default: [], array: true
      t.string :city, null: false
      t.string :country, null: false
      t.string :description
      t.string :genres, default: [], array: true
      t.string :venue, null: false
      t.timestamps
    end
  end
end
