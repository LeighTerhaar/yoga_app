class CreatePoses < ActiveRecord::Migration[5.1]
  def change
    create_table :poses do |t|
      t.string :english_name
      t.string :sanksrit
      t.integer :sequence_id
      t.string :picture
      t.integer :sun_a_id
      t.integer :sun_b_id
      t.integer :sun_c_id

      t.timestamps
    end
  end
end
