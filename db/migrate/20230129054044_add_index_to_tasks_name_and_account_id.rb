class AddIndexToTasksNameAndAccountId < ActiveRecord::Migration[6.0]
  def change
    add_index :tasks, [:title, :id], unique: true
  end
end
