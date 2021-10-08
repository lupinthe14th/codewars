require_relative '../lib/html_special_chars'
require 'codewars_test'

describe 'Sample tests' do
  it 'Examples' do
    expect(html_special_chars('<h2>Hello World</h2>')).to eq('&lt;h2&gt;Hello World&lt;/h2&gt;')
    expect(html_special_chars('Hello, how would you & I fare?')).to eq('Hello, how would you &amp; I fare?')
    expect(html_special_chars('How was "The Matrix"?  Did you like it?')).to eq('How was &quot;The Matrix&quot;?  Did you like it?')
    expect(html_special_chars("<script>alert('Website Hacked!');</script>")).to eq("&lt;script&gt;alert('Website Hacked!');&lt;/script&gt;")
  end
end
