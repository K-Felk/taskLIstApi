class Task < ApplicationRecord
    enum urgency: { low:0, medium:1, high:2 }

    attribute :urgency, default: :medium

    validates :name,  presence: true
    validates :description, presence: true
    
    belongs_to :project
    has_one :user
end
