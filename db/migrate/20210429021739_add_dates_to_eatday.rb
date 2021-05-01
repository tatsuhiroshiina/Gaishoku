class AddDatesToEatday < ActiveRecord::Migration[6.1]
  def change
    add_column :eatdays, :eat_count, :date
  end
end
