require("rspec")
require("title_case.rb")

describe("String#title_case") do
  it("take the first letter of a single word and capitalize it") do
    expect("mark".title_case).to(eq("Mark"))
  end
  it("take the first letter of all the words in the string and capitalize the first letter") do
    expect("marky mark".title_case).to(eq("Marky Mark"))
  end
  it("take the first letter of every word besides 'and' and capitalize it.") do
    expect("marky and mark".title_case).to(eq("Marky and Mark"))
  end
end
