class RemoveIconFromStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :icon, :text
  end
end
