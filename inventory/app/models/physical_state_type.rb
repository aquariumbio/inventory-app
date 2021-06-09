class PhysicalStateType < ApplicationRecord
  has_many :physical_states, :dependent => :destroy
  has_many :single_item_types, :dependent => :destroy
end
