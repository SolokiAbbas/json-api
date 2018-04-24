
describe "Adding URLS to Database" do
  subject(:websites){Website.new({url: "new", links: "new", h1: "new", h2: "new", h3: "new"})}

  it "should add to database" do
    websites.save
    expect(Website.last).to equal(websites)
  end

  it "should add multiple tags" do
  end

  it "should display all in database" do
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
