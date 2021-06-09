class Sample < ApplicationRecord
  belongs_to :sample_type
  has_many :single_item_types, :dependent => :destroy
end
