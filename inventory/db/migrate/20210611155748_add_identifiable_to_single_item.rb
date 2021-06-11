class AddIdentifiableToSingleItem < ActiveRecord::Migration[6.1]
  def change
    add_column(:single_items, :identifier, :string, if_not_exists: true)
    add_index(:single_items, :identifier, if_not_exists: true, unique: true)
  end
end
