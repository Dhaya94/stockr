class CreateStocksWatchlists < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks_watchlists do |t|
      t.integer :stock_id
      t.integer :watchlist_id
    end
  end
end
