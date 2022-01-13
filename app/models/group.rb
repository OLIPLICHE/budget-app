class Group < ApplicationRecord
  belongs_to :user
  belongs_to :entity

  validates :name, :icon, presence:true
end
