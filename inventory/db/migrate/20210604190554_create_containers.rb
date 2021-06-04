class CreateContainers < ActiveRecord::Migration[6.1]
  def change
    create_table :containers do |t|
      t.text :quantity
      t.text :location
      t.belongs_to :container_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
