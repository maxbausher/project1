# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string
#  surname         :string
#  email           :string
#  password_digest :string
#  gender          :string
#  birthday        :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  is_admin        :boolean          default(FALSE)
#

class User < ApplicationRecord
    has_many :contacts
    has_many :interests
    has_secure_password
    validates :email, presence:true, uniqueness: true, length: {minimum: 5}
end
