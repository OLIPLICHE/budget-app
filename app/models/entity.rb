class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :groups
  has_many :entity_groups

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
