class DropPhysicalStateTypes < ActiveRecord::Migration[6.1]
  def change
    drop_table :physical_state_types
    remove_column :physical_states, :physical_state_type_id
    remove_column :single_item_types, :physical_state_type_id
  end
end
