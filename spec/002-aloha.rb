describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has four p tags" do
    expect(index).to have_tag('p', count: 4)
  end
  
  it "says Hello World" do
    expect(index).to have_tag('p', text: 'English: Hello World')
  end

  it "says Aloha Houna" do
    expect(index).to have_tag('p', text: 'Hawaiian: Aloha Houna')
  end

  it "says Moien Welt" do
    expect(index).to have_tag('p', text: 'Luxembourgish: Moien Welt')
  end

  it "says Salamu Dunia" do
    expect(index).to have_tag('p', text: 'Swahili: Salamu Dunia')
  end
end
