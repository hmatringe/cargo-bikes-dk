class AddSkuToBikes < ActiveRecord::Migration[5.0]
  def change
    add_column :bikes, :sku, :string
  end
end
