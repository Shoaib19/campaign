class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :type
      t.string :username
      t.string :status
      t.string :profession
      t.string :service

      t.timestamps
    end
  end
end
