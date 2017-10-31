class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.integer :rank
      t.string :song
      t.string :artist
      t.integer :year
      t.string :lyrics

      t.timestamps
    end
  end
end
