class DropProductPropertyTranslations < ActiveRecord::Migration
  def change
    drop_table :spree_product_property_translations
  end
end
