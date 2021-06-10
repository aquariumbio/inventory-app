class Collection < ApplicationRecord
  belongs_to :collection_type
  has_many :containers, as: :format, :dependent => :destroy
  has_many :collection_items, :dependent => :destroy
end
