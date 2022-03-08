Gem::Specification.new do |s|
  s.name        = 'zy_crawler'
  s.version     = '0.0.1'
  s.summary     = 'A yong spider'
  s.description = 'A simple crawler demo crawler'
  s.authors     = 'uuen sky'
  s.email       = 'uuensky@163.com'
  s.files       = %w(
                    lib/command_line_argument_parser.rb
                    lib/spider.rb
                    lib/url_store.rb
                    lib/url_utils.rb
                    lib/zy_crawler.rb
                    )
  s.executables = ['zycrawler']
  s.add_runtime_dependency 'hpricot', '~> 0.8'
  s.homepage    = 'https://rubygems.org/gems/zy_crawler'
  s.license     = 'MIT'
  if s.respond_to?(:metadata=)
    s.metadata = {
      "changelog_uri" => "https://github.com/uuensky/zycrawler/blob/master/CHANGELOG.md",
      "homepage_uri" => "https://rubygems.org/gems/zy_crawler",
      "source_code_uri" => "https://github.com/uuensky/zycrawler.git",
    }
  end
end
