Spree::ProductProperty.class_eval do
  belongs_to :value, touch: true, class_name: 'Spree::Value', inverse_of: :product_properties
end
