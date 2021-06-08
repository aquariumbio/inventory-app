class FixForeignKey < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :single_items_physical_states, :items
    add_foreign_key :single_items_physical_states, :single_items
  end
end
