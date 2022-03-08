# Memory URL Store
class URLStore
  attr_reader :urls
  alias get_urls urls

  def initialize(url_file)
    @urls = read_urls_from_file(url_file)
  end

  def firt_url
    @urls[0]
  end

  private

  def read_urls_from_file(url_file)
    urls = []
    File.open(url_file, 'r') do |file|
      file.readlines.each do |line|
        urls.push(line.chomp)
      end
    end
    urls
  end

end
