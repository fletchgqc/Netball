class RetryChangeTypeOfWill < ActiveRecord::Migration
  def change
    change_table :players do |t|
      t.remove :will
    end
    
    change_table :attendances do |t|
      t.remove :will
      t.string :will
    end
  end
end
