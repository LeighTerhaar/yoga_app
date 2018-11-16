class AddPoseCountToSunAs < ActiveRecord::Migration[5.1]
  def change
    add_column :sun_as, :poses_count, :integer
  end
end
