
describe "Adding URLS to Database" do
  subject(:websites){Website.new({url: "new", links: "new", h1: "new", h2: "new", h3: "new"})}

  it "should add to database" do
    websites.save
    expect(Website.last).to eql(websites)
  end

  it "should add additional tags correctly to database" do
    websites.h1 = Website.last.parseCSS("h1", "https://www.google.com")
    expect(websites.h1).to eql("new new")
  end

end

describe "Testing JSON URLS", type: :feature do

  it "should get a link and add it to database" do
  end

  it "should should make sure its a link" do
  end

  it "should display all in database" do
  end

end
