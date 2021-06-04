class CreateSampleCompositionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :sample_composition_types do |t|
      t.string :name
      t.text :description
      t.text :recipe

      t.timestamps
    end
  end
end
