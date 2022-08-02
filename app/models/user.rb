class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :entities
    has_many :groups
    has_one_attached :avatar

    validates :firstname, presence: true, length: {minimum:3, maximum: 250}
    validates :lastname, presence: true, length: {minimum:3, maximum: 250}
end
