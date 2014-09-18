class Bookmark
  def initialize (url, title="[no title]")
    @url = url
    @title = title
    @last_visited = Time.now
  end
  def visit!
    @last_visited = Time.now
  end
  def update (url, title)
    @url = url
    @title = title
  end
end
