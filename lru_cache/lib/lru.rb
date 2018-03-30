class LRUCache
    def initialize
      @cache = Hash.new
    end

    def count
      # returns number of elements currently in cache
      cache.size
    end

    def add(el)
      # adds element to cache according to LRU principle
      cache[Time.new.to_i] = el
    end

    def show
      # shows the items in the cache, with the LRU item first
      cache.values
    end

    private
    # helper methods go here!
    attr_reader :cache
  end
