class DropContainersAndContainerTypes < ActiveRecord::Migration[6.1]
  def change
    drop_table :containers
    remove_column :items, :container_id
    drop_table :container_types
    remove_column :item_types, :container_type_id
    rename_table :items, :containers
    rename_table :item_types, :container_types
  end
end
