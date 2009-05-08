atom_feed do |feed|
  feed.title("My great blog!")
  feed.updated(@posts.first.created_at)
  
  @posts.each do |post|
    entry.title(post.title)
    entry.content(post.body, :type => 'html')
    entry.author {|author| author.name("sora") }
  end
end