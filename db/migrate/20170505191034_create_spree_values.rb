class CreateSpreeValues < ActiveRecord::Migration
  def change
    create_table :spree_values do |t|
      t.string :name

      t.timestamps
    end
  end
end
