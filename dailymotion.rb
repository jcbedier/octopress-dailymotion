module Jekyll
  class DailyMotion < Liquid::Tag
    def initialize(name, id, tokens)
      super
      @id = id
    end
    def render(context)
	%(<div class="daily-container"><iframe src="http://www.dailymotion.com/embed/video/#{@id}"></iframe></div>)
    end
  end
end
Liquid::Template.register_tag('dailymotion', Jekyll::DailyMotion)
