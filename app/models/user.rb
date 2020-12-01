class User < ApplicationRecord
    has_many :landmarks, dependent: :destroy
end
