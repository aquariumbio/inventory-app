class ItemType < ApplicationRecord
  belongs_to :container_type
  belongs_to :format_type, polymorphic: true
end
