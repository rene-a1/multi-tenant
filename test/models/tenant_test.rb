# == Schema Information
#
# Table name: tenants
#
#  id           :bigint           not null, primary key
#  discarded_at :datetime
#  key          :uuid             not null
#  name         :string(60)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_tenants_on_discarded_at  (discarded_at)
#  index_tenants_on_key           (key) UNIQUE
#
require "test_helper"

class TenantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
