class Contact < ApplicationRecord
    validates :name, presence: true, length: {maximu: 50}
    validates :phone, presence: true 

    belongs_to :user
end
