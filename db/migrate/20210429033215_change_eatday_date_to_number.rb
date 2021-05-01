class ChangeEatdayDateToNumber < ActiveRecord::Migration[6.1]
  def change
    remove_column :eatdays, :eat_count, :date
    add_column :eatdays, :eat_count, :integer
  end
end
