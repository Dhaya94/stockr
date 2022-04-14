class RemoveLatestPriceFromStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :latest_price, :float
  end
end
