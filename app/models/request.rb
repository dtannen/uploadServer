# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Request < ActiveRecord::Base
  # attr_accessible :title, :body
end
