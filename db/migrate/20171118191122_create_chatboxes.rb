class CreateChatboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :chatboxes do |t|
      t.string :topic
      t.timestamps
    end
  end
end
