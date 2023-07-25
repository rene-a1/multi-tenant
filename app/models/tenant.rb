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
class Tenant < ApplicationRecord
  include Discard::Model
  has_many :tenant_users, dependent: destroy
  has_many :users, through: :tenant_users

  after_discard do
    tenant_users.discard_all
  end

  after_undiscard do
    tenant_users.undiscard_all
  end
end
