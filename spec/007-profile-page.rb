describe "profile.html" do
  let(:index) { File.open("profile.html", "rb").read }

  it "has a doctype" do
    expect(index.downcase).to start_with("<!doctype html>")
  end

  it "has an html tag" do
    expect(index.downcase).to include("<html>")
    expect(index.downcase).to include("</html>")
  end

  it "has a head tag" do
    expect(index.downcase).to include("<head>")
    expect(index.downcase).to include("</head>")
  end

  it "has a title tag" do
    expect(index).to have_tag("title")
  end

  it "has a body tag" do
    expect(index.downcase).to include("<body>")
    expect(index.downcase).to include("</body>")
  end
end
