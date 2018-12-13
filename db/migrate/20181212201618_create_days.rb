class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.belongs_to :week
      t.string :title

      t.timestamps
    end
  end
end
