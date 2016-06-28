require 'css_parser'

describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  let(:parser) do
    p = CssParser::Parser.new
    p.load_file! "main.css"
    p
  end

  it "has text in a div tag" do
    expect(index).to have_tag("div") do
      with_tag "p"
    end
  end

  it "has a div tag with class float-left" do
    expext(index).to have_tag("div", with: { class: "float-left" })
  end

  context "div" do
    let(:div_rules) { parser.find_by_selector('div').join(' ').downcase }

    it "uses the box attributes" do
      expect(div_rules).to include('width', 'padding', 'border', 'margin')
    end
  end

  context "div.float-left" do
    let(:div_float_rules) { parser.find_by_selector('div.float-left').join(' ').downcase }

    it "floats left" do
      expect(div_float_rules).to include('float', 'left')
    end
  end
end
