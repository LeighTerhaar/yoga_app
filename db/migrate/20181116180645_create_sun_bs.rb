class CreateSunBs < ActiveRecord::Migration[5.1]
  def change
    create_table :sun_bs do |t|

      t.timestamps
    end
  end
end
