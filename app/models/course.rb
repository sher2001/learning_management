class Course < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [ 100, 100 ]
  end

  has_many :lessons
  has_and_belongs_to_many :categories

  def first_lesson
    self.lessons.order(:position).first
  end

  def next_lesson(current_user)
    if current_user.blank?
     return self.lessons.order(:position).first
    end

    pending_lessons = current_user.lesson_users.includes(:lesson).where(lesson: { course: self }, completed: false).order(:position)
    if pending_lessons.any?
      return pending_lessons.first.lesson
    end

    completed_lesson_ids = current_user.lesson_users.includes(:lesson).where(lesson: { course: self }, completed: true).order(:position).pluck(:lesson_id)
    unopened_lessons = self.lessons.where.not(id: completed_lesson_ids).order(:position)
    if unopened_lessons.any?
      unopened_lessons.first
    else
      self.lessons.order(:position).first
    end
  end
end
