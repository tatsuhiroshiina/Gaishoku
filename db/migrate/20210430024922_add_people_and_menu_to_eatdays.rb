class AddPeopleAndMenuToEatdays < ActiveRecord::Migration[6.1]
    def change
      add_column :eatdays, :menu1, :string
      add_column :eatdays, :menu2, :string
      add_column :eatdays, :menu3, :string
      add_column :eatdays, :menu4, :string
      add_column :eatdays, :people1, :string
      add_column :eatdays, :people2, :string
      add_column :eatdays, :people3, :string
      add_column :eatdays, :people4, :string
    end
  end
