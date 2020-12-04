class Landmark < ApplicationRecord
  belongs_to :user
  has_one :coord, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :img_url, presence: true
  validates :bio, presence: true
  validates :genre, presence: true
end
