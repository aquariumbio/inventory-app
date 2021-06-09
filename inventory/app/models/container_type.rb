class ContainerType < ApplicationRecord
  has_many :containers, :dependent => :destroy
  has_many :item_types, :dependent => :destroy
end
