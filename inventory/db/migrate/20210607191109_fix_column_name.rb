class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :single_items_physical_states do |t|
      t.rename :item_id, :single_item_id
    end
  end
end
