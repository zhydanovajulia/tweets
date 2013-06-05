module ApplicationHelper
  def link_to_like_unlike tweet
    tweet.favorited ? link_to_unlike(tweet.id) : link_to_like(tweet.id)
  end

  def link_to_like tweet_id
    link_to(favorites_path(id: tweet_id), method: :post, remote: true, class: ['like', 'btn', 'btn-mini', 'btn-warning']) do
      content_tag(:i, nil, class: 'icon-star') + 'Like'
    end

  end

  def link_to_unlike tweet_id
    link_to(home_path(id: tweet_id), method: :delete, remote: true, class: ['unlike', 'btn', 'btn-mini','btn-danger']) do
      content_tag(:i, nil, class: 'icon-star-empty') + 'Unlike'
    end
  end

  def link_to_remove tweet_id
    link_to(favorite_path(id: tweet_id), method: :delete, remote: true, class: ['unlike', 'btn', 'btn-mini','btn-danger']) do
      content_tag(:i, nil, class: 'icon-star-empty') + 'Unlike'
    end
  end
end
