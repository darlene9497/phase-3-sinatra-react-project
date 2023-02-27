class Stream < ActiveRecord::Base
    has_many :pupils
    has_many :subjects, through: :pupils
    has_many :teachers, through: :pupils
end