class CollectionType < ApplicationRecord
  has_many :collections, :dependent => :destroy
  has_many :container_types, as: :format_type, :dependent => :destroy
end
