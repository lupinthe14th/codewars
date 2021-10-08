require_relative '../lib/html_special_chars'

describe 'Sample tests' do
  it 'html h2' do
    expect(html_special_chars('<h2>Hello World</h2>')).to eq('&lt;h2&gt;Hello World&lt;/h2&gt;')
  end

  it 'text &' do
    expect(html_special_chars('Hello, how would you & I fare?')).to eq('Hello, how would you &amp; I fare?')
  end

  it 'text \"' do
    expect(html_special_chars('How was "The Matrix"?  Did you like it?')).to eq('How was &quot;The Matrix&quot;?  Did you like it?')
  end

  it 'html script' do
    expect(html_special_chars("<script>alert('Website Hacked!');</script>")).to eq("&lt;script&gt;alert('Website Hacked!');&lt;/script&gt;")
  end
end
