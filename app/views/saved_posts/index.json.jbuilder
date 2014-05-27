json.array!(@saved_posts) do |saved_post|
  json.extract! saved_post, :id, :title
  json.url saved_post_url(saved_post, format: :json)
end
