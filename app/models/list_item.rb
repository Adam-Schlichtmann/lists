class ListItem < ApplicationRecord
  belongs_to :list

  validates :item, presence: true
end
