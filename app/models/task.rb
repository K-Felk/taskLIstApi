class Task < ApplicationRecord
    enum urgency: { low:0, medium:1, high:2 }

    attribute :urgency, default: :medium

    validates :name,  presence: true
    validates :description, presence: true
    

    validates :dueDate, :allow_blank => true, :timeliness => {:on_or_after => lambda { Date.current }, :type => :datetime}
    
    belongs_to :project
    has_one :user
end
