class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|

      t.decimal :longitude, :limit => 128
      t.decimal :latitude, :limit => 128
      t.belongs_to :contact_detail

      t.timestamps
    end
  end
end
