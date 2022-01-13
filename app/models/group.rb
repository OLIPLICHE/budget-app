class Group < ApplicationRecord
  belongs_to :user
  has_many :entities
  has_many :entity_groups

  validates :name, :icon, presence: true
end
