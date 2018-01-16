xml.instruct!
xml.articles do
  @articles.each do |article|
    xml.article do
      xml.title article.title
      xml.text article.text
    end
  end
end