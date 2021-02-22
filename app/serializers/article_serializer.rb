class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :source, :author, :title, :description, :url, :image, :date, :content, :task
end
