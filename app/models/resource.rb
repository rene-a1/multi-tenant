# == Schema Information
#
# Table name: resources
#
#  id           :bigint           not null
#  discarded_at :datetime
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  tenant_id    :bigint           not null
#
# Indexes
#
#  index_resources_on_tenant_id  (tenant_id)
#
class Resource < ApplicationRecord
end
