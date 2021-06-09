class ContainerType < ApplicationRecord
  has_many :containers, :dependent => :destroy
end
