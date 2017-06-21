class AddPriceToBikes < ActiveRecord::Migration[5.0]
  def change
    add_monetize :bikes, :price, currency: { present: false }
  end
end
