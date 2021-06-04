class CreatePhysicalStates < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_states do |t|
      t.string :name
      t.text :description
      t.belongs_to :physical_state_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
