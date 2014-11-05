class AddTimestampsToQuotes < ActiveRecord::Migration
  def change
    change_table :quotes do |t|
      t.change :created_at, :nil => Time.now
    end
  end
end
