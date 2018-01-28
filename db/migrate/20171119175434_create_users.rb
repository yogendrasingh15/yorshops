class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_type
      t.string :name
      t.string :mobile_number
      t.string :alternate_number
      t.string :address
      t.string :city
      t.string :state
      t.string :pincode
      t.string :gender
      t.string :status
      t.timestamps
    end
  end
end
