# This migration comes from blorgh (originally 20130904142644)
class AddAuthorIdToBlorghPosts < ActiveRecord::Migration
  def change
    add_column :blorgh_posts, :author_id, :integer
  end
end
