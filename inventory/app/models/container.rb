class Container < ApplicationRecord
  belongs_to :container_type
  belongs_to :format, polymorphic: true
end
