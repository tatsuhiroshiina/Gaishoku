class AddStartTimeToEatdays < ActiveRecord::Migration[6.1]
  def change
    add_column :eatdays, :start_time, :datetime
  end
end
