class CreateStreams < ActiveRecord::Migration[6.1]
  def change
    create_table :streams do |t|
      t.string :streams
      # t.integer :sitting_capacity
    end
  end
end
