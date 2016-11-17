class AddColumnsToMovie < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :director, :string
    add_column :movies, :rated, :string
    add_column :movies, :release_date, :string
    add_column :movies, :poster, :string
    add_column :movies, :actors, :string
    add_column :movies, :runtime, :string
    add_column :movies, :genre, :string
  end
end
