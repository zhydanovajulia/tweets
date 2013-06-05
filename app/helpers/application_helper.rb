module ApplicationHelper
  def link_to_like_unlike tweet
    tweet.favorited ? link_to_unlike(tweet.id) : link_to_like(tweet.id)
  end

  def link_to_like tweet_id
    link_to('Like', favorites_path(id: tweet_id), method: :post, remote: true, class: "like")
  end

  def link_to_unlike tweet_id
    link_to('Unlike', home_path(id: tweet_id), method: :delete, remote: true, class: "unlike")
  end

  def link_to_remove tweet_id
    link_to('Unlike', favorite_path(id: tweet_id), method: :delete, remote: true, class: "unlike")
  end
end
