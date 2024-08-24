module ApplicationHelper
  def page_title(title)
    base_title = 'ゲキカラ、ドウ？'

    title.empty? ? base_title : title + " | " +  base_title
  end
end
