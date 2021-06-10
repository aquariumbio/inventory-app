class SingleItemType < ApplicationRecord
  belongs_to :sample_type
  has_many :container_types, as: :format_type, :dependent => :destroy
end
