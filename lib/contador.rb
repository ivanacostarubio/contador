class Contador

  attr_accessor :string

  def initialize(string)
    @omit = []
    @string = string
    @final = Hash.new
    split_string_into_hash
    delete_omits if $omits
  end

  def delete_omits
    $omits.split(' ').each do |word|
      @final.delete(word.to_sym)
    end
  end

  def multiplicity
    @final
  end

  def omit(word)
    @final.delete(word.to_sym)
  end

  private

  def split_string_into_hash
    string.split(' ').each do |word|
      begin
        word.gsub!(/\W+/, '')
        key = word.downcase.to_sym
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
