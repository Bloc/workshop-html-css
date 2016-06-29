describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has a ul (unordered list) tag" do
    expect(index).to have_tag("ul")
  end

  it "has 4 li tags within the ul" do
    expect(index).to have_tag("ul") do
      with_tag "li", count: 4
    end
  end
end
