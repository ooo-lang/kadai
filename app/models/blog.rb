class Blog < ApplicationRecord
  has_many :categorizations
  has_many :categories, through: :categorizations

  # CSデータ読込処理
  #
  # @param file [string] CSVデータのファイルパス
  # @return void
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      blog = Blog.new(
        title: row[BlogModelConstants::HEADER_BLOG_TITLE],
        content: row[BlogModelConstants::HEADER_CONTENT],
        created_at: Time.zone.parse(row[BlogModelConstants::HEADER_CREATED_AT]),
        updated_at: Time.zone.parse(row[BlogModelConstants::HEADER_UPDATED_AT])
      )

      # カテゴリをカンマ区切りで配列化
      categories = row[BlogModelConstants::HEADER_CATEGORY].split(',').map(&:strip)

      categories.each do |category_name|
        # 既存のカテゴリが無ければ生成
        category = Category.find_or_create_by(name: category_name)
        blog.categories << category
      end

      blog.save
    end 
  end
end
