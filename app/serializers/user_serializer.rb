class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :hometown, :img_url, :bio
  has_many :landmarks
end
