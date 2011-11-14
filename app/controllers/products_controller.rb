class ProductsController < InheritedResources::Base
  before_filter :authenticate_user! 
  respond_to :html, :xml, :json
  has_scope :limit, :default => 8
  
  def create
    create! { products_path }
  end
end
