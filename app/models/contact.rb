# == Schema Information
#
# Table name: contacts
#
#  id                  :integer          not null, primary key
#  first_name          :string
#  surname             :string
#  email               :string
#  gender              :string
#  location            :string
#  relationship_status :string
#  birthday            :date
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Contact < ApplicationRecord
    belongs_to :user, optional: true
    has_many :interests
    has_many :gifts
end
