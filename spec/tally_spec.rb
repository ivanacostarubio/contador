require 'spec'
require 'tally'

describe Tally do 
  it "returns an empty string for nothing " do 
    contador = Tally.new(" ")
    contador.multiplicity.should == {} 
  end

  it "handles a single word" do 
    contador = Tally.new("cuenta")
    contador.multiplicity.should == {:cuenta => 1}
  end

  it "handles a couple of words" do 
    contador = Tally.new("estudio estudio")
    contador.multiplicity.should == {:estudio => 2}
  end

  it "handles multiple single words" do 
    contador = Tally.new("estudio estudio estudio estudio estudio estudio")
    contador.multiplicity.should == {:estudio => 6} 
  end

  it "handles real sentences" do 
    contador = Tally.new("Cuando voy a estudiar me siento muy bien")
    contador.multiplicity.should == {:cuando => 1, :voy => 1, :a => 1, :estudiar => 1, :me => 1, :siento => 1, :muy => 1, :bien => 1}
  end

  it "handles duplicates words in sentences" do 
    contador = Tally.new("Ruby es depinga. Muy depinga.")
    contador.multiplicity.should == {:ruby => 1, :es => 1, :depinga => 2, :muy => 1}
  end

  it "handles weir case" do 
    contador = Tally.new("Esto esta depinga. Depinga esta esto.")
    contador.multiplicity.should == {:esto => 2, :esta => 2, :depinga => 2}
  end

  it "handles long string cases" do 
    string = "estan muyyy lindos   cual es el precio por bolsito, estan cool  Cuanto s su precio    cual es su precio  quisiera saber los precios  ESTAN MUY LINDOS    me encantan        Donde estàn ubicados?    hermosos    por donde el envio y costo?            -          Quisiera saber el precio antes de comprar  Quisiera saber el precio antes de comprar    NO NINGUNO  son bellos pero cuanto cuestan                stan dmasiado beios   me encantan estos bolso. en cuanto tiempo mas o menos tengo q hacerles el deposito? soy de maracaibo gracias    cuanto es?            umm okzz  me gustaria saber si no hay otra rebaja por la cantidad?? y con posibilidades de comprar mas, gracias  xD    hola como estas quisiera que por fa me enciaras fotos de los bolsos y me dieras el precio especifica de c/u... y como hacemos con el envio??  :D                            -    nop                 me gustan los bolsitos     -                  nop      noo q staan muuy lindos              como es el envio"

    contador = Tally.new(string)
    contador.multiplicity.should == {:noo=>1, :precios=>1, :la=>1, :estos=>1, :cu=>1, :cuanto=>4, :gustaria=>1, :el=>8, :pero=>1, :enciaras=>1, :cual=>2, :soy=>1, :de=>6, :mas=>2, :ubicados=>1, :xd=>1, :y=>4, :bolsitos=>1, :beios=>1, :los=>3, :rebaja=>1, :especifica=>1, :bellos=>1, :o=>1, :cool=>1, :okzz=>1, :que=>1, :lindos=>3, :deposito=>1, :antes=>2, :tiempo=>1, :estàn=>1, :posibilidades=>1, :gustan=>1, :dmasiado=>1, :saber=>4, :muy=>1, :otra=>1, :dieras=>1, :son=>1, :bolsito=>1, :umm=>1, :estas=>1, :costo=>1, :muyyy=>1, :hacerles=>1, :muuy=>1, :fa=>1, :donde=>2, :con=>2, :en=>1, :nop=>2, :d=>1, :hay=>1, :stan=>1, :quisiera=>4, :bolsos=>1, :ninguno=>1, :por=>4, :gracias=>2, :como=>3, :no=>2, :envio=>3, :estan=>3, :tengo=>1, :staan=>1, :es=>4, :encantan=>2, :cantidad=>1, :q=>2, :bolso=>1, :hacemos=>1, :su=>2, :me=>6, :si=>1, :s=>1, :cuestan=>1, :fotos=>1, :precio=>6, :maracaibo=>1, :comprar=>3, :menos=>1, :hermosos=>1, :hola=>1} 

  end

end
