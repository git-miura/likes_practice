class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  # ***** 以下を追加 *****
  has_many :likes, dependent: :destroy

  has_many :liked_posts, through: :likes, source: :post
  # ***** 以上を追加 *****
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
