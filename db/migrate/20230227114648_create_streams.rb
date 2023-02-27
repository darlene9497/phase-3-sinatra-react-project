class CreateStreams < ActiveRecord::Migration[6.1]
  def change
    create_table :streams do |t|
      t.string :name
      t.integer :capacity
    end
  end
end
