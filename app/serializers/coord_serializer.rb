class CoordSerializer < ActiveModel::Serializer
    attributes :lat, :lng
    belongs_to :landmark
  end