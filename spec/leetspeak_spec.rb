require('rspec')
require('leetspeak')

describe('String#leetspeak') do
  it('replaces every E with a 3') do
    expect("hell".leetspeak()).to(eq("h3ll"))
  end
  it('replaces every O with a 0') do
    expect("hello".leetspeak()).to(eq("h3ll0"))
  end
  it('replaces every I with a 1') do
    expect("Information".leetspeak()).to(eq("1nf0rmati0n"))
  end
  it('replaces every s with a z unless it is the first letter of a word') do
    expect("this is a string test".leetspeak()).to(eq("thiz iz a string t3zt"))
  end
end
