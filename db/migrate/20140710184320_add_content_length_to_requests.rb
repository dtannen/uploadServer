class AddContentLengthToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :content_length, :string
  end
end
