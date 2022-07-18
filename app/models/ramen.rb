class Ramen < ApplicationRecord
  belongs_to :customer
  has_one_attached :image

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

  enum men_genre: { ramen: 0, tsukemen: 1, shirunashi: 2, others: 3 }, _prefix: true
  enum soup_genre: { shoyu: 0, shio: 1, miso: 2, tonkotsu: 3, tonkotsushoyu: 4, tonkotsushio: 5, tonkotsumiso: 6, seafood: 7, curry: 8, others: 9 }, _prefix: true
end
