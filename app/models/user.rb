class User < ApplicationRecord
    has_many :landmarks, dependent: :destroy

    # TURN BACK ON AFTER TESTING!!!!!!
    # validates :username, presence: true, uniqueness: true
    # validates :hometown, presence: true

end
