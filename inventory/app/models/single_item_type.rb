class SingleItemType < ApplicationRecord
  belongs_to :sample_type
  has_many :item_types, as: :format_type
end
