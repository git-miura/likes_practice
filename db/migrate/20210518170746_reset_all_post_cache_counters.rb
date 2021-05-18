class ResetAllPostCacheCounters < ActiveRecord::Migration[6.0]
  # ***** 以下を編集 *****
  def up
    Post.find_each { |post| Post.reset_counters(post.id, :likes_count) }
  end

  def down
  end
  # ***** 以上を編集 *****
end
