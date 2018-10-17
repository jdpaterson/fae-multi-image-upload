class Listing < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field

  end

  mount_uploaders :images, ImagesUploader
end
