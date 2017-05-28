module CustomHelper

  def photo_or_placeholder(photo)
    if photo
      cl_image_tag photo.path, width: 800, crop: :fit
    else
      image_tag "default_bike_photo.svg", width: 800
      # cage_tal_img "exqqhy1fq2e1kd7gqzhx", width: 800, crop: :fit
    end
  end
end
