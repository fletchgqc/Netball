class AddCancelledToFixture < ActiveRecord::Migration
  def change
    add_column :fixtures, :cancelled, :boolean, :default => false
  end
end
