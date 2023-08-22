class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :type
      t.integer :abv
      t.boolean :still_available

      t.timestamps
    end
  end
end
