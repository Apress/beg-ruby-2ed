require 'rubygems'
require 'hpricot'

html = <<END_OF_HTML
<html>
<head>
  <title>This is the page title</title>
</head>

<body>
  <h1>Big heading!</h1>
  <p>A paragraph of text.</p>
  <ul><li>Item 1 in a list</li><li>Item 2</li><li class="highlighted">Item 
3</li></ul>
</body>
</html>
END_OF_HTML

doc = Hpricot(html)
puts doc.search("h1").first.inner_html

