class CreateSingleItemTypesPhysicalStates < ActiveRecord::Migration[6.1]
  def change
    create_table :single_item_types_physical_states do |t|
      t.belongs_to :single_item_type, null: false, foreign_key: true
      t.belongs_to :physical_state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
