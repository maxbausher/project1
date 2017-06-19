# == Schema Information
#
# Table name: settings
#
#  id                    :integer          not null, primary key
#  relationship_status   :string
#  credit_card_full_name :string
#  credit_card_number    :integer
#  expiration_date       :integer
#  csv                   :integer
#  credit_card_type      :string
#  user_id               :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Setting < ApplicationRecord
    belongs_to :user
end
