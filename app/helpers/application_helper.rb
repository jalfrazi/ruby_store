module ApplicationHelper

  #----------
  # Function |
  #========================================
  # Select ActiveRecord from Images by Product_id with/out Name
  # Reruns   | Image URL
  #----------------------------------------
  def GetImageUrl(id, name)
    if name ==''
      images = Image.where(product_id: id)
      images.url
    else
      images = Image.where(product_id: id, name: name).first
      images.url
    end
  end
  #========================================

end
