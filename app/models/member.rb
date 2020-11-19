class Member < ApplicationRecord
    has_many :compositions
    has_many :performances
end
