class Entity < ApplicationRecord
    belongs_to :user
    has_many :groups

    validates :name, presence: {message: "Name can't be blank!"}
    validates :amount, length: {greater_than: 0, message: 'Amount must be greater than Zero (0)'}
end
