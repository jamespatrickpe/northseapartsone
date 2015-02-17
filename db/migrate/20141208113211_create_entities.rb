class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|

      t.string :name, :limit => 128
      t.string :description, :limit => 512
      t.string :logo, :limit => 512
      t.belongs_to :contact_detail
      t.belongs_to :access

      t.timestamps
    end
  end
end
