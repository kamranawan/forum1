class CreateForumThreads < ActiveRecord::Migration[5.1]
  def change
    create_table :forum_threads do |t|
      t.integer :user_id
      t.string :first_name 
      t.string :subject

      t.timestamps
    end
  end
end
