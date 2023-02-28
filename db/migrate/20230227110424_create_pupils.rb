class CreatePupils < ActiveRecord::Migration[6.1]
  def change
    create_table :pupils do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :parent_contact
      t.integer :teacher_id
      t.string :stream_name
      t.integer :subject_id
    end
  end
end
