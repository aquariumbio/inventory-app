class Collection < ApplicationRecord
  belongs_to :collection_type
  has_many :items, as: :format
end
