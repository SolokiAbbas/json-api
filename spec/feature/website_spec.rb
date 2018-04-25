require 'airborne'

describe "Adding URLS to Database" do
  subject(:websites){Website.new({url: "new", links: "new", h1: "new", h2: "new", h3: "new"})}

  it "should add to database" do
    websites.save
    expect(Website.last).to eql(websites)
  end

  it "should add additional tags correctly to database" do
    websites.h2 = Website.last.parseCSS("h2", "http://www.nokogiri.org/tutorials/installing_nokogiri.html")
    expect(websites.h2).to eql("Install with included libraries (RECOMMENDED)  Install with system libraries  Install with custom / non-standard libraries")
  end

  it "should get a link and add it to database" do
    post 'localhost:3000/websites' , { 'params' => { :url => 'http://www.nokogiri.org/tutorials/installing_nokogiri.html' } }
    puts websites
    expect(JSON.parse(response.body)['url']).to eql(Website.last)
  end

end

describe "Testing JSON URLS", type: :feature do
  subject(:websites){Website.new({url: "new", links: "new", h1: "new", h2: "new", h3: "new"})}


  it "should should make sure its a link" do
  end

  it "should display all in database" do
  end

end
