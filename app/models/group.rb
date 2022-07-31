class Group < ApplicationRecord
    belongs_to :user
    has_many :groups

    validates :name, presence: {message: "Name can't be blank!"}
end
