require 'rubygems'
require 'redcloth'

text = %q{h1. This is a heading.

This is the first paragraph.

This is the second paragraph.

h1. Another heading

h2. A second level heading

Another paragraph}

document = RedCloth.new(text)
puts document.to_html

