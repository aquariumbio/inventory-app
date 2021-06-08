class Item < ApplicationRecord
  belongs_to :container
  belongs_to :format, polymorphic: true
end
