class CreateTonguestuns < ActiveRecord::Migration[5.2]
  def change
    create_table :tonguestuns do |t|
      t.string :name
      t.string :mobile
      t.timestamps
    end
  end
end
