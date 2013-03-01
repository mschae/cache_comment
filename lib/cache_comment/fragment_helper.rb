module CacheComment
  module FragmentHelper

    def write_fragment(key, content, options = nil)
      comment = CommentFormatter.new(fragment_cache_key(key), options)
      content = comment.start + content + comment.end
      super key, content, options
    end
  end
end
