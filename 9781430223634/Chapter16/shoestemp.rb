Shoes.app :height => 500, :width => 500 do
  stack do
    para "Type:"
    @e = edit_box :width => 0.9, :height => 300
    @chars = para "0 characters"

    @e.change do
      @chars.text = "#{@e.text.length} characters"
    end
  end
end
