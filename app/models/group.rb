class Group < ApplicationRecord
  belongs_to :user
  has_many :entities, through: :entity_groups, dependent: :destroy
  has_many :entity_groups, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }

  def add_entity(options)
    entity = Entity.create!(name: options[:name], amount: options[:amount], user: options[:user])
    entities << entity
    entity
  end
end
