require 'ruboto/widget'
require 'ruboto/util/toast'
require 'ruboto/util/stack'

ruboto_import_widgets :Button, :LinearLayout, :TextView

require 'ruby-debug'

class DebuggingActivity

  def onCreate(bundle)
    super

    set_title 'Domo arigato, Mr Ruboto!'

    Debugger.wait_connection = true
    Debugger.start_remote         

    Thread.start do
      debugger
      puts "onCreate: debugger session begin"
      set_title 'Degugging Mr Ruboto!'
      puts "onCreate: debugger session end"
    end.join

    self.content_view = linear_layout :orientation => :vertical do
      @text_view = text_view :text => 'What hath Matz wrought?', :id => 42, 
        :layout => {:width => :match_parent},
        :gravity => :center, :text_size => 48.0
      button :text => 'M-x butterfly', 
        :layout => {:width => :match_parent},
        :id => 43, :on_click_listener => proc { butterfly }
    end
  end

  private

  def butterfly
    @text_view.text = 'What hath Matz wrought!'

    Thread.start do
      debugger
      puts "butterfly: debugger session begin"
      @text_view.text = 'Butterfly debugged!'
      puts "butterfly: debugger session end"
    end.join

    toast 'Flipped a bit via butterfly'
  end

end

