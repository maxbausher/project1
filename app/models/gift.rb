class Gift < ApplicationRecord
    belongs_to :contact, optional: true
end
