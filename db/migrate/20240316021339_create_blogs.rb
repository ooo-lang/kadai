class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t| # Blogテーブル
      t.string :title # Blogタイトル
      t.string :content # Blogの内容

      t.timestamps
    end
  end
end
