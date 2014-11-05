class Updown < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
    change_column :quotes, :created_at,  :datetime, :default => Time.now
    change_column :quotes, :updated_at, :datetime, :default => Time.now
  end
end
