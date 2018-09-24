class Contact < ApplicationRecord
    belongs_to :user
    has_many :affair_contacts, dependent: :destroy
    has_many :affairs, through: :affair_contacts


end






