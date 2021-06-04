class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :format_id
      t.string :format_class
      t.belongs_to :container, null: false, foreign_key: true

      t.timestamps
    end
  end
end
