# name: Discourse topic excerpt plugin
# about: A small plugin to force all topics to have excerpts
# version: 0.1
# authors: Angus McLeod

after_initialize do
  add_to_serializer(:listable_topic, :include_excerpt?) { true }
end