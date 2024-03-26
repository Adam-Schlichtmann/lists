class ListItem < ApplicationRecord
  include Visible

  belongs_to :list

  validates :item, presence: true
end
