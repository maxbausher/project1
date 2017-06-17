# == Schema Information
#
# Table name: interests
#
#  id         :integer          not null, primary key
#  item       :string
#  contact_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Interest < ApplicationRecord
    belongs_to :user
    belongs_to :contact
end
