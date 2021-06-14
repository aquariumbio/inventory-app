class SingleItemTypesPhysicalState < ApplicationRecord
  belongs_to :single_item_type
  belongs_to :physical_state
end
