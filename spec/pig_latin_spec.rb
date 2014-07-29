require './lib/pig_latin.rb'
require 'pry-byebug'


describe PigLatin do 

  describe "translate" do 
    it "adds 'way' to the end of words that begin with a vowel or silent letter" do
      expect(PigLatin::translate("egg")).to eq("eggway")
    end

    it "moves 'y' to the end of the word, plus 'ay', if the word begins with 'y'" do
      expect(PigLatin::translate("yellow")).to eq("ellowyay")
    end

    it "moves the initial consonant(cluster) to the end of the word and adds 'ay'" do
      expect(PigLatin::translate("glove")).to eq("oveglay")
    end

    it "doesn't include 'y' in beginning consonant clusters" do
      expect(PigLatin::translate("rhythm")).to eq("ythmrhay")
    end
  end

end