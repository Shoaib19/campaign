class AddUserIdToTodo < ActiveRecord::Migration[5.0]
  def change
    add_column :todos ,:user_id,:integer
    add_column :tags ,:user_id,:integer
  end
end
