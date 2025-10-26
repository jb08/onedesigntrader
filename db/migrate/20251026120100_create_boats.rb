class CreateBoats < ActiveRecord::Migration[8.0]
  def change
    create_table :boats do |t|
      t.string :title
      t.string :type
      t.text :description
      t.integer :year
      t.string :number
      t.string :manufacturer
      t.decimal :price, precision: 12, scale: 2
      t.references :seller, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
