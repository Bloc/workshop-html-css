describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "links to the Wikipedia page on Swahili" do
    expect(index).to have_tag('a', with: { href: "https://en.wikipedia.org/wiki/Swahili_language" },
                                   text: "Swahili")
  end

  it "suggests Bing Translator" do
    expect(index).to have_tag('p', text: "For additional translations, visit Bing Translator.")
  end

  it "links to Bing Translator" do
    expect(index).to have_tag('a', with: { href: "https://www.bing.com/translator" },
                                   text: "Bing Translator")
  end

end
