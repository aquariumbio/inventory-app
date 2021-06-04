class CreateSingleItemsPhysicalStates < ActiveRecord::Migration[6.1]
  def change
    create_table :single_items_physical_states do |t|
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :physical_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
