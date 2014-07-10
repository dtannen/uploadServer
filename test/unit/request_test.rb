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

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
