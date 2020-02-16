class AddUserIdToPosts < ActiveRecord::Migration[6.0]

  def change
    add_column :posts, :user_id, :integer # add user_id column to posts table, Format - integer
  end
end
