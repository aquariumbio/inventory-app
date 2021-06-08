class FixAnotherForeignType < ActiveRecord::Migration[6.1]
  def change
    change_table :item_types do |t|
      t.rename :format_type_class, :format_type_type
    end
  end
end
