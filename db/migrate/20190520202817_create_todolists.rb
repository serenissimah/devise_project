class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|
      t.string :listname
      t.string :content
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
