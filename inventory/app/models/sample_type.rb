class SampleType < ApplicationRecord
  has_many :samples, :dependent => :destroy
end
