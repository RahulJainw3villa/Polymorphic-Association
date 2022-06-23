class RemovePolyToComm < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :article_id, :integer
    remove_column :comments, :event_id, :integer
    remove_column :comments, :news_id, :integer
  
  end
end
