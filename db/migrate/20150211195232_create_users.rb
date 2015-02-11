class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :profile_name
      t.text :bio

      t.timestamps null: false
    end
  end
end
