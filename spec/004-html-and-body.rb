describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has an html tag" do
    expect(index.downcase).to include("<html>")
    expect(index.downcase).to include("</html>")
  end

  it "has a body tag" do
    expect(index.downcase).to include("<body>")
    expect(index.downcase).to include("</body>")
  end

  it "has a body tag with 4 ps and an h1 tag inside it" do
    expect(index).to have_tag('body') do
      with_tag "h1"
      with_tag "p", count: 4
    end
  end
end
