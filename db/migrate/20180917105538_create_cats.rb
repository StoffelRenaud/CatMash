class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.string :url
      t.integer :rate, default: 0

      t.timestamps
    end
  end
end
