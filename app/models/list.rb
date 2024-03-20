class List < ApplicationRecord
  has_many :list_items

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :color, presence: true, length: { is: 6 }
end
