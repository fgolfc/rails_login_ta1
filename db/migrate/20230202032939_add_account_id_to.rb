class AddAccountIdTo < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :account_id, :integer
  end
end
