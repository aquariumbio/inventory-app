class PhysicalState < ApplicationRecord
  has_and_belongs_to_many :single_items, :join_table => :single_items_physical_states
  has_and_belongs_to_many :single_item_types, :join_table => :single_item_types_physical_states
end
