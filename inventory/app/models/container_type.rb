class ContainerType < ApplicationRecord
  has_many :containers, :dependent => :destroy
  belongs_to :format_type, polymorphic: true
end
