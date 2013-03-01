Gem::Specification.new do |s|
  s.name    = 'cache_comment'
  s.version = File.read('VERSION')
  s.author  = 'Michael Schaefermeyer'
  s.email   = 'michael.schaefermeyer@zweitag.de'
  s.summary = 'HTML comments for every fragment cache block for debugging and freshness validation'

  s.required_ruby_version = '>= 1.9'

  s.add_dependency 'actionpack', '>= 3.2'

  s.files = Dir[File.join(File.dirname(__FILE__), '**', '*')]
end
