class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true

  belongs_to :wheatgoal, optional: true
  has_one :profile
  has_many :meals
  has_many :digitals
  has_many :communications
end
