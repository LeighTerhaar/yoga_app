class AddPoseCountToYogaFlows < ActiveRecord::Migration[5.1]
  def change
    add_column :yoga_flows, :poses_count, :integer
  end
end
