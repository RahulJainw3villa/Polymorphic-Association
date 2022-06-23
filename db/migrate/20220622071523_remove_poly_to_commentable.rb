class RemovePolyToCommentable < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :commentable_types, :string
  
  end
end
