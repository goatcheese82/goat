class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|

      t.date :start_day
      

      t.timestamps
    end
  end
end
