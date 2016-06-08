describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has an img tag" do
    expect(index).to have_tag("img")
  end
  
  it "has an img tag with a src attribute" do
    expect(index).to have_tag("img[src!='']")
  end

  it "has an img tag with an alt attribute" do
    expect(index).to have_tag("img[alt!='']")
  end
end
