class CollectionType < ApplicationRecord
  has_many :collections, :dependent => :destroy
  has_many :item_types, as: :format_type, :dependent => :destroy
end
