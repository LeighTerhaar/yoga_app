class CreateSunAs < ActiveRecord::Migration[5.1]
  def change
    create_table :sun_as do |t|

      t.timestamps
    end
  end
end
