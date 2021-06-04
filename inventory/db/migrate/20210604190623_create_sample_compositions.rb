class CreateSampleCompositions < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_compositions do |t|
      t.text :quantity
      t.integer :composite_sample_id
      t.integer :component_sample_id
      t.belongs_to :sample_composition_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
