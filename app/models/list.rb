class List < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :color, presence: true, length: { is: 6 }
end
