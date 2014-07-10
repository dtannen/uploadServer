# == Schema Information
#
# Table name: requests
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  request_ip     :string(255)
#  content        :text
#  content_length :string(255)
#  raw_post       :string(255)
#  type           :string(255)
#  request_type   :string(255)
#

class Request < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :request_ip, :content, :created_at, :content_length, :raw_post, :request_type
end
