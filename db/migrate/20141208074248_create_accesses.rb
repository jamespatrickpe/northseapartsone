class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.string :username, :index => true, :limit => 15
      t.string :password_digest
      t.boolean :remember_me, :default => false
      t.string :security_level, :default => "NONE", :limit => 128

      t.timestamps
    end

    Access.create( username: 'administrator', password: 'administrator', remember_me: true, security_level: 'ADMIN', password_confirmation: 'administrator')
  end
end
