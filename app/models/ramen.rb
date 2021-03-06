class Ramen < ApplicationRecord
  belongs_to :customer
  has_one_attached :image
  has_many :favorites, dependent: :destroy

  validates :restaurant_name, presence: true, length: {maximum: 20 }
  validates :impression, presence: true, length: {maximum: 200 }
  validates :image, presence: true

  enum men_genre: { ramen: 0, tsukemen: 1, shirunashi: 2, others: 3 }, _prefix: true
  enum soup_genre: { shoyu: 0, shio: 1, miso: 2, tonkotsu: 3, tonkotsushoyu: 4, tonkotsushio: 5, tonkotsumiso: 6, seafood: 7, curry: 8, others: 9 }, _prefix: true

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

  def favorites_only_alive
    alive = Customer.where(is_deleted: false)
    favorites.where(customer: alive)
  end

  #
  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

  # 検索方法分岐
  def self.looks(search, word)
    if search == "perfect_match"
      @ramen = Ramen.where("restaurant_name LIKE?","#{word}")
    elsif search == "forward_match"
      @ramen = Ramen.where("restaurant_name LIKE?","#{word}%")
    elsif search == "backward_match"
      @ramen = Ramen.where("restaurant_name LIKE?","%#{word}")
    elsif search == "partial_match"
      @ramen = Ramen.where("restaurant_name LIKE?","%#{word}%")
    else
      @ramen = Ramen.all
    end
  end
end
