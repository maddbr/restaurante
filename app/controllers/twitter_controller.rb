class TwitterController < ApplicationController

  def index

	texto = []
	texto << "<ul>"

	doc = Hpricot(open('http://twitter.com/maddbr'))
	items = doc / ".hentry .entry-content"
	items.each do |item|
		texto << "<li>#{item.inner_text}</li>"
	end
	texto << "</ul>"
	render :text => texto
  end


end
