class User < ApplicationRecord
    has_many: entities
    has_many: groups

    validates :first_name, presenece: true, length: {minimum:3, maximum: 250}
    validates :last_name, presenece: true, length: {minimum:3, maximum: 250}
end
