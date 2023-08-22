class RemoveTypeFromWines < ActiveRecord::Migration[7.0]
  def change
    remove_column :wines, :type
  end
end
