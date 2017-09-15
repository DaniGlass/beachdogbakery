module PinterestAdapter
  class << self
    def init_connection
      key = ENV['PINTEREST_TOKEN']
      p key
      @client = Pinterest::Client.new("#{key}")
    end

    def search(term)
      init_connection
      @client.get_boards(query: term)

    end
  end
end
