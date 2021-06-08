class AddColumns < ActiveRecord::Migration[6.1]
  def change
    add_reference :collections, :collection_type, foreign_key: true
    add_column :collection_types, :rows, :integer
    add_column :collection_types, :columns, :integer
  end
end
