class SingleItemsPhysicalState < ApplicationRecord
  belongs_to :item
  belongs_to :physical_state
end
