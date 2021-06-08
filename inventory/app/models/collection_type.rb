class CollectionType < ApplicationRecord
  has_many :collections
  has_many :item_types, as: :format_type
end
