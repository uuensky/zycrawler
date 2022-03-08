require 'command_line_argument_parser'
require 'spider'
require 'url_store'

# ZyCrawler is from Jason zhao's YzCrawler
class ZyCrawler
  def initialize
    @argument_parser = CommandLineArgumentParser.new
    @argument_parser.parse_arguments
    @spider = Spider.new
    @url_store = URLStore.new(@argument_parser.url_file)
  end

  def crawl
    if @argument_parser.crawl_type == CommandLineArgumentParser::WEB_CRAWLER
      @spider.crawl_web(@url_store.get_urls,
                        @argument_parser.crawl_depth,
                        @argument_parser.page_limit)
    else
      @spider.crawl_domain(@url_store.firt_url, @argument_parser.page_limit)
    end
  end
end
