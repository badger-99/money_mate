class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :categories
  has_many :payments, foreign_key: 'author_id'

  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
end
