class Place < ApplicationRecord
    include SearchCop
    paginates_per 4
    
    has_one_attached :picture
    has_many :events

    search_scope :search do
        attributes :name, :description
        # ...
    end
end
