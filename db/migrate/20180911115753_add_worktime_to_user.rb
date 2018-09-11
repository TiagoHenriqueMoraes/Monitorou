class AddWorktimeToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :worktime, foreign_key: true
  end
end
