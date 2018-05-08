# name: Discourse topic excerpt plugin
# about: A small plugin to force all topics to have excerpts
# version: 0.2
# authors: Angus McLeod, Johani

after_initialize do
  add_to_class :post, :excerpt_for_topic do
      Post.excerpt(cooked, 50, strip_links: true)
  end
  add_to_serializer(:listable_topic, :include_excerpt?) { true }
end
