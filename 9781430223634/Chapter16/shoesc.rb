Shoes.app(:width => 600, :height => 500) do
  stack do
    flow do
      @open_button = button "Open"
      @save_button = button "Save"
    end
    @t = edit_box :width => 0.9, :height => 400
  end
  @open_button.click do
    @t.text = File.read(ask_open_file)
  end
  @save_button.click do
    File.new(ask_save_file, 'w') do |f|
      f.puts @t.text
    end
  end
end



