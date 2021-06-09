class SampleCompositionType < ApplicationRecord
  has_many :sample_compositions, :dependent => :destroy
end
