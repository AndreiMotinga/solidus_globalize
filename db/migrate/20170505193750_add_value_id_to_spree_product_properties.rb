class AddValueIdToSpreeProductProperties < ActiveRecord::Migration
  def up
    add_reference :spree_product_properties, :value, index: true

    return unless defined?(Spree::Value)

    values = Spree::ProductProperty.find_each.map(&:value).uniq
    values.each do |val|
      say "Migrating #{val}"
      v = Spree::Value.create(name: val)
      Spree::ProductProperty.where(value: val).update_all(value_id: v.id)
    end
  end

  def down
    # TODO: add logic to reverse the migration

    remove_reference(:products, :user, index: true)
  end
end
