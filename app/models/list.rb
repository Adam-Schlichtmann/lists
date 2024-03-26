class List < ApplicationRecord
  include Visible
  
  has_many :list_items, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :color, presence: true, length: { is: 6 }
end
