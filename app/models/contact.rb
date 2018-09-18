class Contact < ApplicationRecord
    belongs_to :user
    has_many :affair_contacts
    has_many :affairs, through: :affair_contacts


end






