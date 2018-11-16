class AddSequenceCountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sequences_count, :integer
  end
end
