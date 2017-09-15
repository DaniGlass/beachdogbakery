module PinterestAdapter
  class << self
    def init_connection
      key = ENV['PINTEREST_TOKEN']
      @client = Pinterest::Client.new(key)
    end

    def search(term)
      init_connection
      @client.get_pins(query: term)
    end
  end
end
