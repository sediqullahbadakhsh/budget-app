class User < ApplicationRecord
    has_many: entities
    has_many: groups

    validates :name, presenece: true, length: {minimum:3, maximum: 250}
end
