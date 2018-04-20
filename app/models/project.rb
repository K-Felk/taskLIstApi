class Project < ApplicationRecord
    validates :name,  presence: true
    validates :description,  presence: true
    validates :dueDate,  presence: true

    has_many :tasks
    has_many :users, through: :tasks

end
