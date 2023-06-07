
module PaginationHelper
  require 'pagy/extras/overflow'
  
  include Pagy::Frontend
  Pagy::DEFAULT[:items] = 5
  Pagy::DEFAULT[:size] = [10, 40, 40, 10]
  Pagy::DEFAULT[:overflow] = :last_page
  
end