module ProjectsHelper
  
  def make_sign(text)
    # only continue if there is text
    if (!defined? text) then
      return
    end
      
    sign = ''
    text.split("").each do |c|
      sign << image_tag("letters/#{c}.png")
    end
    
    raw(sign)
  end
end
