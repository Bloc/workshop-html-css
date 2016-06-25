describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has a ul tag" do
    expect(index).to have_tag("ul")
  end

  it "has 4 li tags" do
    expect(index).to have_tag("li", count: 4)
  end
end
