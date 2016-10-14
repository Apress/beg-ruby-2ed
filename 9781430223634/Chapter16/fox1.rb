require 'rubygems'
require 'fox16'

include Fox

theApp = FXApp.new

theMainWindow = FXMainWindow.new(theApp, "Hello")
theApp.create

theMainWindow.show

theApp.run
