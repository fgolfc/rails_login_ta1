class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content

      t.timestamps
      add_index :tasks, [:name, :account_id], unique: true
    end
  end
end
