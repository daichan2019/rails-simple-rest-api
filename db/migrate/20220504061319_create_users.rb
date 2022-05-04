class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, default: ''
      t.string :email, default: ''
      t.string :uid, null: false, default: ''
      t.text :introduction

      t.timestamps

      t.index :uid, unique: true
    end
  end
end
