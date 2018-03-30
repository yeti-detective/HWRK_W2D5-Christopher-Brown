require 'lru'

describe LRUCache do
  subject(:lru) { LRUCache.new }
  describe '#add' do
    it "accepts an element to the array" do
      expect(lru.count).to be_zero
    end
  end

  describe '#show' do
    it "shows the elements in the cache" do
      lru.add(Array.new(23) { 'nice nice nice'} )
      expect(lru.show).to be_a_kind_of Array
    end
  end

  describe '#count' do
    it "gives the size of the cache (in number of items)" do
      10.times { |i| lru.add('fuzzy wuzzy wuzza bear'); sleep(1) }
      expect(lru.count).to eq 10
    end
  end
end
