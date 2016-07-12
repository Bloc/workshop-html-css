require 'css_parser'

describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }
  let(:parser) do
    p = CssParser::Parser.new
    p.load_file! "main.css"
    p
  end

  it "has English in a language span tag" do
    expect(index).to have_tag("span.language", text: "English")
  end

  it "has Hawaiian in a language span tag" do
    expect(index).to have_tag("span.language", text: "Hawaiian")
  end

  it "has Luxembourgish in a Luxembourgish span tag" do
    expect(index).to have_tag("span.language", text: "Luxembourgish")
  end

  it "has Swahili in a language span tag" do
    expect(index).to have_tag("span.language", text: "Swahili")
  end

  it "has a td tag with Aloha Houna set to an id of aloha" do
    expect(index).to have_tag("td#aloha", text: "Aloha Houna")
  end

  context "language class" do
    let(:language_rules) { parser.find_by_selector('.language').join(' ').downcase }

    it "has a bold font weight" do
      expect(language_rules).to include('font-weight', 'bold')
    end

    it "has a purple background" do
      expect(language_rules).to include('background', 'purple')
    end
  end

  context "aloha id" do
    let(:aloha_rules) { parser.find_by_selector('#aloha').join(' ').downcase }

    it "has 8px letter spacing" do
      expect(aloha_rules).to include('letter-spacing', '8px')
    end

    it "uses the small caps font variant" do
      expect(aloha_rules).to include('font-variant', 'small-caps')
    end

    it "has a green background" do
      expect(aloha_rules).to include('background', 'green')
    end
  end
end
