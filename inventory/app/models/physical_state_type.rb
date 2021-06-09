class PhysicalStateType < ApplicationRecord
  has_many :physical_states, :dependent => :destroy
end
