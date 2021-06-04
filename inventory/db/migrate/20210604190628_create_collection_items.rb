class CreateCollectionItems < ActiveRecord::Migration[6.1]
  def change
    create_table :collection_items do |t|
      t.integer :row
      t.integer :column
      t.belongs_to :collection, null: false, foreign_key: true
      t.belongs_to :single_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
