module PagesHelper
  def truncate_news_title(title)
    begin
      title
      #truncate(title, :length => 24)
    rescue Exception => e
      ""
    end
  end
end
