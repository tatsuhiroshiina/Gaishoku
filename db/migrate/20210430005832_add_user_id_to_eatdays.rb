class AddUserIdToEatdays < ActiveRecord::Migration[6.1]
  def change
    add_column :eatdays, :user_id, :integer
  end
end
