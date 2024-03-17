class Blog < ApplicationRecord
  has_many :categorizations
  has_many :categories, through: :categorizations

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      created_at = Time.zone.parse(row['created_at'])
      updated_at = Time.zone.parse(row['updated_at'])

      blog = Blog.new(
        title: row['blog_title'],
        content: row['blog_content'],
        created_at: created_at,
        updated_at: updated_at
      )

      categories = row['categories'].split(',').map(&:strip)
      categories.each do |category_name|
        category = Category.find_or_create_by(name: category_name)
        blog.categories << category
      end

      blog.save
    end 
  end
end
