module PaginationHelper
  require 'pagy/extras/overflow'
  include Pagy::Frontend
  # for all the Pagy instances
  Pagy::DEFAULT[:link_extra] = 'data-remote="true" class="pagy-class"'
  Pagy::DEFAULT[:items] = 5
  
  ## LIST OF DEFAULTS FOR REFERENCE
  #   :page => 1,
  #   :items => 20,
  #   :outset => 0,
  #   :size => [1, 4, 4, 1],
  #   :page_param => :page,
  #   :params => {},
  #   :fragment => "",
  #   :link_extra => "",
  #   :i18n_key => "pagy.item_name",
  #   :cycle => false,
  #   :request_path => ""
  
end