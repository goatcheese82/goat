class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.belongs_to :day
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
