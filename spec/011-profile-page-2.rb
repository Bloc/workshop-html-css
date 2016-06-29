describe "profile.html" do
  let(:index) { File.open("profile.html", "rb").read }

  it "has links" do
    expect(index).to have_tag('a')
  end

  it "has a table" do
    expect(index).to have_tag('table')
  end

  it "has an ordered list" do
    expect(index).to have_tag('ol')
  end

end
