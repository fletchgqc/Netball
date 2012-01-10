class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
