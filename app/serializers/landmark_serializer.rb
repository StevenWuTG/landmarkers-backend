class LandmarkSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :img_url, :bio, :genre
  belongs_to :user
end
