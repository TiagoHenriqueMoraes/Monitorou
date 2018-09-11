class AddSubjectAndCourseToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :subject, foreign_key: true
    add_reference :users, :course, foreign_key: true
  end
end
