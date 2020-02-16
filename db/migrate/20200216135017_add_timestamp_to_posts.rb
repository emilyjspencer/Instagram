class AddTimestampToPosts < ActiveRecord::Migration[6.0]
  def change
    # add new column but allow null values
    add_timestamps :posts, null: true
  # backfill existing record with created_at and updated_at
    # values making clear that the records are faked
    long_ago = DateTime.new(2020, 02, 16)
    Post.update_all(created_at: long_ago, updated_at: long_ago)
  # change not null constraints
    change_column_null :posts, :created_at, false
    change_column_null :posts, :updated_at, false
  end
end
