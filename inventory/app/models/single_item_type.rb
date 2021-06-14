class SingleItemType < ApplicationRecord
  belongs_to :sample_type
  has_many :container_types, as: :format_type, :dependent => :destroy
  has_and_belongs_to_many :physical_states, :join_table => :single_item_types_physical_states
end
