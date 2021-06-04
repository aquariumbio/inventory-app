class CreateSingleItemTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :single_item_types do |t|
      t.belongs_to :physical_state_type, null: false, foreign_key: true
      t.belongs_to :sample_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
