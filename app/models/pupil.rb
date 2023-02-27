class Pupil < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :stream
    belongs_to :subject
end