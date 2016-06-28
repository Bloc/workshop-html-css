require 'css_parser'

describe "index.html" do
  let(:parser) do
    p = CssParser::Parser.new
    p.load_file! "main.css"
    p
  end

  context "body" do
    let(:body_rules) { parser.find_by_selector('body').join(' ').downcase }

    it "has a lighter font weight" do
      expect(body_rules).to include('font-weight', 'lighter')
    end

    it "has a 36px font size" do
      expect(body_rules).to include('font-size', '36px')
    end

    it "has a #fff3e3 text color" do
      expect(body_rules).to include('color', '#fff3e3')
    end
  end

  context "links" do
    let(:a_rules) { parser.find_by_selector('a').join(' ').downcase }

    it "have a #ffb985 text color" do
      expect(a_rules).to include('color', '#ffb985')
    end
  end

  context "h1" do
    let(:h1_rules) { parser.find_by_selector('h1').join(' ').downcase }

    it "has a #ae7182 text color" do
      expect(h1_rules).to include('color', '#ae7182')
    end
  end

  context "table headers" do
    let(:th_rules) { parser.find_by_selector('th').join(' ').downcase }

    it "have a #fff3e3 border color" do
      expect(th_rules).to include('border', '#fff3e3')
    end
  end

  context "table" do
    let(:table_rules) { parser.find_by_selector('table').join(' ').downcase }

    it "has a #262b53 border color" do
      expect(table_rules).to include('border', '#262b53')
    end
  end

  context "language" do
    let(:language_rules) { parser.find_by_selector('.language').join(' ').downcase }

    it "has a #262b53 background color" do
      expect(language_rules).to include('background', '#262b53')
    end
  end
  
end
