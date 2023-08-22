class CreateWineries < ActiveRecord::Migration[7.0]
  def change
    create_table :wineries do |t|
      t.string :name
      t.string :location
      t.integer :employees
      t.boolean :still_active

      t.timestamps
    end
  end
end
