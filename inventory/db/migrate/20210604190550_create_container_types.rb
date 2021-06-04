class CreateContainerTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :container_types do |t|
      t.string :name
      t.text :description
      t.string :size

      t.timestamps
    end
  end
end
