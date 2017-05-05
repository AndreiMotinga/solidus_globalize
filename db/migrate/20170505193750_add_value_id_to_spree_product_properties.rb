class AddValueIdToSpreeProductProperties < ActiveRecord::Migration
  def change
    remove_column :spree_product_properties, :value
    add_reference :spree_product_properties, :value, index: true
  end
end
