class CreateItemTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :item_types do |t|
      t.integer :format_type_id
      t.string :format_type_class
      t.belongs_to :container_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
