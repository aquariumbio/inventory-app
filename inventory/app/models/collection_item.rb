class CollectionItem < ApplicationRecord
  belongs_to :collection
  belongs_to :single_item
end
