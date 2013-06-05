module ApplicationHelper
  def link_to_remove tweet_id
    link_to('Unlike', favorite_path(id: tweet_id), method: :delete, remote: true, class: "unlike")
  end
end
