class CreateCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :categories do |t| # Categoryテーブル
      t.string :name # Category名

      t.timestamps
    end
  end
end
