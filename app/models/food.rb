class Food < ApplicationRecord
  belongs_to :entry
  validates :name, presence: true, length: {minimum: 2}
end
