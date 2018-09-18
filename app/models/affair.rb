class Affair < ApplicationRecord
    has_many :affair_contacts
    has_many :contacts, through: :affair_contact
end


