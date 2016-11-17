class RemoveGenreFromMovies < ActiveRecord::Migration[5.0]
  def change
    remove_column :movies, :genre, :string
  end
end
