class RemoveNameFromStocks < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :name, :text
  end
end
