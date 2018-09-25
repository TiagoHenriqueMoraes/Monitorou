class AddReferencesToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :worktime, foreign_key: true
    add_reference :users, :subject, foreign_key: true
    add_reference :users, :course, foreign_key: true
    add_reference :users, :institution, foreign_key: true
  end
end
