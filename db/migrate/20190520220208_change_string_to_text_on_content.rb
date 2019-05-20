class ChangeStringToTextOnContent < ActiveRecord::Migration[5.2]
  def change
    change_column :todolists, :content, :text
  end
end
