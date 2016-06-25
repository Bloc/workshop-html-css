describe "index.html" do
  let(:index) { File.open("index.html", "rb").read }

  it "has a table tag with 5 nested tr tags" do
    expect(index).to have_tag("table") do
      with_tag "tr", count: 5
    end
  end
  
  it "has a tr tag with 8 nested th tags" do
    expect(index).to have_tag("tr") do
      with_tag "th", count: 2
    end
  end
  
  it "has 8 nested td tags within tr tags" do
    expect(index).to have_tag("tr") do
      with_tag "td", count: 8
    end
  end

  it "has th tags with the expected content" do
    expect(index).to have_tag("th", text: "Language")
    expect(index).to have_tag("th", text: "Translation")
  end
  
  it "has td tags with the expected content" do
    expect(index).to have_tag("td", text: "English")
    expect(index).to have_tag("td", text: "Hello World")
    expect(index).to have_tag("td", text: "Hawaiian")
    expect(index).to have_tag("td", text: "Aloha Houna")
    expect(index).to have_tag("td", text: "Luxembourgish")
    expect(index).to have_tag("td", text: "Moien Welt")
    expect(index).to have_tag("td", text: "Swahili")
    expect(index).to have_tag("td", text: "Salamu Dunia")
  end
end
