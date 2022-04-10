class AddIconToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :icon, :text
  end
end
