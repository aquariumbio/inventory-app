class CreatePhysicalStateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :physical_state_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
