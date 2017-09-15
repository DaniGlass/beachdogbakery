module PinterestAdapter
  class << self
    def init_connection
      key = ENV['PINTEREST_TOKEN']
      p key
      @client = Pinterest::Client.new("#{key}")
    end

    def search(term)
      init_connection
      p @client.get_pins(query: term)

    end
  end
end
