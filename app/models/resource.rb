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
class Resource < ApplicationRecord
end
