class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :default => "username not set"

      t.timestamps

    end
  end
end
