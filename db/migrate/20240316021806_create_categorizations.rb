class CreateCategorizations < ActiveRecord::Migration[7.1]
  def change
    create_table :categorizations do |t| # Blog、Categoryの中間テーブル
      t.references :blog, null: false, foreign_key: true # Blogテーブル
      t.references :category, null: false, foreign_key: true # Categoryテーブル

      t.timestamps
    end
  end
end
