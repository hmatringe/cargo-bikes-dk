class CreateBikes < ActiveRecord::Migration[5.0]
  def change
    create_table :bikes do |t|
      t.string :color
      t.boolean :electric
      t.integer :daily_price_in_cents
      t.text :description
      t.string :address
      t.references :brand_model, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
