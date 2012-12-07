class SimpleSplitter
  attr_accessor :ingredients

  def split
    ingredients.split(" ")
  end
end



class Contador

  attr_accessor :string, :splitter

  def initialize(string, splitter=SimpleSplitter)
    @omit = []
    @string = string
    @final = Hash.new
    @splitter = splitter
    split_string_into_hash
    delete_omits if $omits
  end

  def delete_omits
    $omits.split(' ').each do |word|
      @final.delete(word)
    end
  end

  def multiplicity
    @final
  end

  def omit(word)
    @final.delete(word)
  end


  private

  def split_string_into_hash
    s = @splitter.new
    s.ingredients = string


    s.split.each do |word|
      begin
        word.gsub!(/[^0-9A-Za-z[-]_\s]/, '')
        key = word.downcase.strip
        if @final.has_key?(key)
          @final[key] += 1
        else
          @final[key] = 1
        end
      rescue
        puts "Upsss.. #{word}"
      end
    end
  end
end




