module CacheComment
  class CommentFormatter

    def initialize key, options
      @key     = key
      @options = options.symbolize_keys
      @time = Time.now
    end

    def start
      comment = ['cached']
      comment << @time
      comment << 'with key'
      comment << @key
      if expires_in = @options[:expires_in]
        comment << 'valid until'
        comment << @time + expires_in
      end
      wrap comment.map(&:to_s).join(' ')
    end

    def start_regex
      Regexp.new start.gsub(@time.to_s, '.*').gsub((@time + @options[:expires_in]).to_s, '.*')
    end

    def end
      wrap "end of #{@key}"
    end

    def wrap(content)
      "<!-- #{content} -->\n"
    end
  end
end