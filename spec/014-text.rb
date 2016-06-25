require 'css_parser'

describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  let(:parser) do
    p = CssParser::Parser.new
    p.load_file! "main.css"
    p
  end
  
  it "has some text in a p tag" do
    expect(index).to have_tag("p")
  end

  context "p" do
    let(:p_rules) { parser.find_by_selector('p').join(' ').downcase }
    
    it "uses the font-size, text-indent, and line-height attributes" do
      expect(p_rules).to include('font-size', 'text-indent', 'line-height')
    end
  end

  context "h1" do
    let(:h1_rules) { parser.find_by_selector('h1').join(' ').downcase }
    
    it "uses the text-shadow attribute" do
      expect(h1_rules).to include('text-shadow')
    end
  end
end
