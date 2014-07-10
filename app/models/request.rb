# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  request_ip :string(255)
#  content    :text
#

class Request < ActiveRecord::Base
  # attr_accessible :title, :body
end
