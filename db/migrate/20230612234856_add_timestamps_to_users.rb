class AddTimestampsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_timestamps :users, default: DateTime.now
  end
end
