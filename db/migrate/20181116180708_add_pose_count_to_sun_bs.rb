class AddPoseCountToSunBs < ActiveRecord::Migration[5.1]
  def change
    add_column :sun_bs, :poses_count, :integer
  end
end
