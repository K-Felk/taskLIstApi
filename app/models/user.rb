class User < ApplicationRecord

    validates :lname,  presence: true
    validates :fname,  presence: true
    validates :email, presence: true
    validates_format_of :email, :with => /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/
    validates_uniqueness_of :email


    has_many :tasks
    has_many :projects, through: :tasks
end
