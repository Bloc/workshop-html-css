describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has a p tag" do
    expect(index).to have_tag('p')
  end
  
  it "says Hello World" do
    expect(index).to have_tag('p', text: 'Hello World')
  end
end
