class RecruitsController < ApplicationController
  set_tab :windows, :jobs, :only => %w(windows)
  set_tab :ios, :jobs, :only => %w(ios)
  set_tab :android, :jobs, :only => %w(android)
  set_tab :c, :jobs, :only => %w(c)
  set_tab :net, :jobs, :only => %w(net)
  set_tab :ruby, :jobs, :only => %w(ruby)
  set_tab :test, :jobs, :only => %w(test)
  set_tab :index, :jobs, :only => %w(index)
  
  def index
  end
 
  def show
  end
end
