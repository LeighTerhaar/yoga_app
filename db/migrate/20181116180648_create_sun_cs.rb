class CreateSunCs < ActiveRecord::Migration[5.1]
  def change
    create_table :sun_cs do |t|

      t.timestamps
    end
  end
end
