# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def sklanjaj_albume(n)
    case n
    when 1
      "en album"
    when 2
      "dva albuma"
    when 3..4
      "#{n} albumi"
    else
      "#{n} albumov"
    end
  end
  
  def sklanjaj_izvajalce(n)
    case n
    when 1
      "en izvajalec"
    when 2
      "dva izvajalca"
    when 3..4
      "#{n} izvajalci"
    else
      "#{n} izvajalcev"
    end
  end
  
  def sklanjaj_komade(n)
    case n
    when 1
      "en komad"
    when 2
      "dva komada"
    when 3..4
      "#{n} komadi"
    else
      "#{n} komadov"
    end
  end
  
  def sklanjaj_izdelke(n)
    case n
    when 1
      "en izdelek"
    when 2
      "dva izdelka"
    when 3..4
      "#{n} izdelki"
    else
      "#{n} izdelkov"
    end    
  end
  
  def menu_item(text, path, options={})
    klass = (path == request.request_uri) ? "active" : ""
    content_tag :li, link_to(text, path, options), :class => klass
  end
end
