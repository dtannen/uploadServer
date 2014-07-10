class AddRequestIpToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :request_ip, :string
  end
end
