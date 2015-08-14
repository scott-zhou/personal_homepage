class CreateAccessrecords < ActiveRecord::Migration
  def change
    create_table :accessrecords do |t|
      t.string :remote_ip

      t.timestamps null: false
    end
  end
end
