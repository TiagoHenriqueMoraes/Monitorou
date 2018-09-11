class User < ApplicationRecord

    has_many :worktimes
    has_many :subjects
    has_one  :course
end
