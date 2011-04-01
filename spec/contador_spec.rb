require 'rubygems'
require 'spec'
require 'lib/contador'

describe Contador do 
  it "returns an empty string for nothing " do 
    contador = Contador.new(" ")
    contador.multiplicity.should == {} 
  end

  it "handles a single word" do 
    contador = Contador.new("cuenta")
    contador.multiplicity.should == {:cuenta => 1}
  end

  it "handles a couple of words" do 
    contador = Contador.new("estudio estudio")
    contador.multiplicity.should == {:estudio => 2}
  end

  it "handles multiple single words" do 
    contador = Contador.new("estudio estudio estudio estudio estudio estudio")
    contador.multiplicity.should == {:estudio => 6} 
  end

  it "handles real sentences" do 
    contador = Contador.new("Cuando voy a estudiar me siento muy bien")
    contador.multiplicity.should == {:cuando => 1, :voy => 1, :a => 1, :estudiar => 1, :me => 1, :siento => 1, :muy => 1, :bien => 1}
  end

  it "handles duplicates words in sentences" do 
    contador = Contador.new("Ruby es depinga. Muy depinga.")
    contador.multiplicity.should == {:ruby => 1, :es => 1, :depinga => 2, :muy => 1}
  end

  it "handles weir case" do 
    contador = Contador.new("Esto esta depinga. Depinga esta esto.")
    contador.multiplicity.should == {:esto => 2, :esta => 2, :depinga => 2}
  end

end

describe Contador, "No sally words" do
  it "omits some basic words" do 
    contador = Contador.new("y y y precio")
    contador.omit("y")
    contador.multiplicity.should == {:precio => 1}
  end

  it "knows about a constant and omits those words" do 
    $omits = "y"
    contador = Contador.new("y y y wasa")
    contador.multiplicity.should == {:wasa => 1}
  end

  it "knows about a contant with multiple words" do
    $omits = "y que yo"
    contador = Contador.new("y que yo precio")
    contador.multiplicity.should == {:precio => 1}
  end
end
