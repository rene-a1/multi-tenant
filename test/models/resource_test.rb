# == Schema Information
#
# Table name: resources
#
#  id           :bigint           not null, primary key
#  discarded_at :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
