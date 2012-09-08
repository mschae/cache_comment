module CacheComment
  class CacheCommentConfig
    attr_accessor :always_visible, :param

    def initialize(&block)
      @always_visible = false
      @param          = :cache_comments
      instance_eval(&block)
      self
    end
  end
end