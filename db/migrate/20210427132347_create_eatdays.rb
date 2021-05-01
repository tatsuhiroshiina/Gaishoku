class CreateEatdays < ActiveRecord::Migration[6.1]
  def change
    create_table :eatdays do |t|

      t.timestamps
    end
  end
end
