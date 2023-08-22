class AddWineryToWines < ActiveRecord::Migration[7.0]
  def change
    add_reference :wines, :winery, null: false, foreign_key: true
  end
end
