class FixForeignType < ActiveRecord::Migration[6.1]
  def change
    change_table :items do |t|
      t.rename :format_class, :format_type
    end
  end
end
