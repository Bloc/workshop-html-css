describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has a head tag" do
    expect(index.downcase).to include("<head>")
    expect(index.downcase).to include("</head>")
  end

  it "has a title tag" do
    expect(index).to have_tag("title")
  end

  it "has a doctype" do
    expect(index.downcase).to start_with("<!doctype html>")
  end
end
