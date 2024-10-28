class Lesson < ApplicationRecord
  has_one_attached :video
  belongs_to :course
  has_many :lesson_users
end
