class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, counter_cache: :likes_count
  # ***** 以下を追加 *****
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: 'は同じ投稿に2回以上いいねはできません'
  }
  # ***** 以上を追加 *****
end
