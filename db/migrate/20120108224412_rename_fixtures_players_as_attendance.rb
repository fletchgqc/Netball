class RenameFixturesPlayersAsAttendance < ActiveRecord::Migration
  def change
    #rename_table :fixtures_players, :attendance
    drop_table :fixtures_players
    
    create_table :attendance do |t|
      t.integer :fixture_id
      t.integer :player_id
      t.boolean :will
    end
  end
end
