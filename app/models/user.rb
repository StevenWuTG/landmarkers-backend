class User < ApplicationRecord
    has_many :landmarks, dependent: :destroy
    validates :username, presence: true, uniqueness: true
    validates :hometown, presence: true

end
