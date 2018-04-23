class Project < ApplicationRecord
    validates :name,  presence: true
    validates :description,  presence: true
    validates :dueDate, presence: true

    validates :dueDate, :timeliness => {:on_or_after => lambda { Date.current }, :type => :datetime}

    has_many :tasks
    

end
