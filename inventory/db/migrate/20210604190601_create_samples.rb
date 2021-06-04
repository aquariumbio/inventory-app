class CreateSamples < ActiveRecord::Migration[6.1]
  def change
    create_table :samples do |t|
      t.string :name
      t.text :description
      t.belongs_to :sample_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
