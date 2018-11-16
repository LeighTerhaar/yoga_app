class CreateYogaFlows < ActiveRecord::Migration[5.1]
  def change
    create_table :yoga_flows do |t|
      t.string :name
      t.string :intention
      t.integer :pose_id
      t.integer :user_id
      t.string :description
      t.string :yoga_type

      t.timestamps
    end
  end
end
