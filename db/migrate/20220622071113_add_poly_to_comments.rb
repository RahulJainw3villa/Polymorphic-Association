class AddPolyToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :commentable_types, :string
    add_column :comments, :commentable_id, :integer
   
  end
end
