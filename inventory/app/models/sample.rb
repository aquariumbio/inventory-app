class Sample < ApplicationRecord
  belongs_to :sample_type
  has_many :single_items, :dependent => :destroy
end
