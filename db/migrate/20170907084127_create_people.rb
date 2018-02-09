class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :domain_url
      t.string :size
      t.string :password
      t.string :username
      t.string :gender

      t.timestamps
    end
  end
end
