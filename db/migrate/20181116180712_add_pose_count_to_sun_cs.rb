class AddPoseCountToSunCs < ActiveRecord::Migration[5.1]
  def change
    add_column :sun_cs, :poses_count, :integer
  end
end
