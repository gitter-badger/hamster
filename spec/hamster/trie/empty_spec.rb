require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

module Hamster

  describe Trie do

    describe "#empty?" do

      it "initially returns true" do
        Trie.new.should be_empty
      end

      it "returns false once items have been added" do
        Trie.new.put("A", "aye").should_not be_empty
      end

    end

  end

end