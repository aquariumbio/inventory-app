class SingleItemType < ApplicationRecord
  belongs_to :physical_state_type
  belongs_to :sample_type
end
