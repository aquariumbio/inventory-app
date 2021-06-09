class SampleType < ApplicationRecord
  has_many :samples, :dependent => :destroy
  has_many :single_item_types, :dependent => :destroy
end
