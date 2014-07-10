class AddRawPostToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :raw_post, :string
  end
end
