class Entity < ApplicationRecord
  belongs_to :user
  has_many :groups
  has_many :entity_groups

  validates :name, presence: true
  validates :amount, presence: true
end
