class Tag < ApplicationRecord
    has_many :taggings, dependent: :destroy
    has_many :videos, through: :taggings, dependent: :destroy

    def to_s
        name
     end

end
