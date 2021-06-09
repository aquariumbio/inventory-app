class Container < ApplicationRecord
  belongs_to :container_type
  has_many :items, :dependent => :destroy
end
