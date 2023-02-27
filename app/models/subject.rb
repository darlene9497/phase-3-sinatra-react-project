class Subject < ActiveRecord::Base
    has_many :pupils
    has_many :teachers, through: :pupils
    has_many :streams, through: :pupils
end