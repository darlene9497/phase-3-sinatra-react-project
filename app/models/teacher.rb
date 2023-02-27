class Teacher < ActiveRecord::Base
    has_many :pupils
    has_many :streams, through: :pupils
    has_many :subjects, through: :pupils
end