class Entry < ApplicationRecord
  has_many :foods
  validates :name, presence: true, length: {minimum: 2}
end
