class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.text :title
      t.text :content
      t.text :author
      t.text :permalink

      t.timestamps
    end
  end
end
