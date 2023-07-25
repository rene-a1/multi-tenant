# == Schema Information
#
# Table name: tenant_users
#
#  id           :bigint           not null, primary key
#  discarded_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  tenant_id    :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_tenant_users_on_discarded_at           (discarded_at)
#  index_tenant_users_on_tenant_id              (tenant_id)
#  index_tenant_users_on_user_id                (user_id)
#  index_tenant_users_on_user_id_and_tenant_id  (user_id,tenant_id) UNIQUE
#
require "test_helper"

class TenantUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
