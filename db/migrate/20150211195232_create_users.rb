class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, null: false
      t.string :profile_name, null: false
      t.text :bio

      t.timestamps null: false
    end
  end
end
