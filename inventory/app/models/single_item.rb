class SingleItem < ApplicationRecord
  belongs_to :sample
  has_and_belongs_to_many :physical_states, :join_table => :single_items_physical_states
  has_many :items, as: :format
end
