class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.text :symbol
      t.text :name
      t.float :latest_price

      t.timestamps
    end
  end
end
