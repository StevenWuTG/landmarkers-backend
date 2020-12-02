class Landmark < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :img_url, presence: true
  validates :bio, presence: true
  validates :genre, presence: true
end
