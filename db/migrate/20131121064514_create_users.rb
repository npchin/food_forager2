class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone
      t.boolean :email_notification
      t.boolean :sms_notification
      t.timestamps
    end
  end
end
