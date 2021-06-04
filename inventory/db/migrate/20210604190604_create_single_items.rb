class CreateSingleItems < ActiveRecord::Migration[6.1]
  def change
    create_table :single_items do |t|
      t.belongs_to :sample, null: false, foreign_key: true

      t.timestamps
    end
  end
end
