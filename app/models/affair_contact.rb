class AffairContact < ApplicationRecord
    belongs_to :affair 
    belongs_to :contact
end
