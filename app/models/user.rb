# == Schema Information
#
# Table name: users
#
#  id           :bigint           not null, primary key
#  discarded_at :datetime
#  first_name   :string
#  last_name    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class User < ApplicationRecord
  include Discard::Model
  has_many :tenant_users, dependent: destroy
  has_many :tenants, through: :tenant_users
end
