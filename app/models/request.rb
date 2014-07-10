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
#

class Request < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :request_ip, :content, :created_at, :content_length
end
