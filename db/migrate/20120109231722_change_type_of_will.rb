class ChangeTypeOfWill < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.remove :will
      t.string :will
    end
  end
end
