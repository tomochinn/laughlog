class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|

      t.string "body"
      t.timestamps
    end
  end
end
