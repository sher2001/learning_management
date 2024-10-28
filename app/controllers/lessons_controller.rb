class LessonsController < ApplicationController
  before_action :set_lesson, :set_course

  # GET /lessons/1 or /lessons/1.json
  def show
    @completed_lesson_ids = current_user.lesson_users.where(completed: true).pluck(:lesson_id)
  end

  def update
    lesson_user = LessonUser.find_or_create_by!(user: current_user, lesson: @lesson)
    p lesson_user
    lesson_user.update!(completed: true)
    next_lesson = @course.lessons.where("position > ?", @lesson.position).order(:position).first

    if next_lesson
      redirect_to course_lesson_path(@course, next_lesson)
    else
      redirect_to course_path(@course), notice: "You have completed the course"
    end
  end

  private
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def set_course
      @course = @lesson.course
    end
end
