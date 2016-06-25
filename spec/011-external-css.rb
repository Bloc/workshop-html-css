require 'css_parser'

describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }
  let(:parser) do
    p = CssParser::Parser.new
    p.load_file! "main.css"
    p
  end
  
  it "does not have a style tag" do
    expect(index).to_not have_tag('style')
  end
  
  it "has a link tag" do
    expect(index).to have_tag('link')
  end

  context "styling the body" do
    let(:body_rules) { parser.find_by_selector('body').join(' ').downcase }

    it "should have a black background" do
      expect(body_rules).to include('background-color', 'black')
    end

    it "should have a sans-serif font family" do
      expect(body_rules).to include('font-family', 'sans-serif')
    end

    it "should have a white text color" do
      expect(body_rules).to include('color', 'white')
    end
  end

  context "styling links" do
    let(:a_rules) { parser.find_by_selector('a').join(' ').downcase }

    it "should have hot pink text" do
      expect(a_rules).to include('color', 'hotpink')
    end
  end
  
  context "styling the image" do
    let(:img_rules) { parser.find_by_selector('img').join(' ').downcase }

    it "should have a block display" do
      expect(img_rules).to include('display', 'block')
    end

    it "should have a auto side margins" do
      expect(img_rules).to include('margin-left', 'margin-right', 'auto')
    end
  end
  
  context "styling the table header" do
    let(:th_rules) { parser.find_by_selector('th').join(' ').downcase }

    it "should have a 5px solid red border" do
      expect(th_rules).to include('border', '2px', 'solid', 'white')
    end
  end

  context "styling the table and cells" do
    let(:table_rules) { parser.find_by_selector('table').join(' ').downcase }
    let(:td_rules) { parser.find_by_selector('td').join(' ').downcase }

    it "should have a 1px solid gray border" do
      expect(table_rules).to include('border', '1px', 'solid', 'gray')
      expect(td_rules).to include('border', '1px', 'solid', 'gray')
    end

    it "should have a collapsed border" do
      expect(table_rules).to include('border-collapse', 'collapse')
      expect(td_rules).to include('border-collapse', 'collapse')
    end

    it "should have 10px of padding" do
      expect(table_rules).to include('padding', '10px')
      expect(td_rules).to include('padding', '10px')
    end
  end
end
