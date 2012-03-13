require 'active_support'
module Bootstrapped
  module BreadCrumbs
    extend ActiveSupport::Concern
    module ClassMethods
      def add_breadcrumb name, url, options={}
        before_filter options do |controller|
          controller.send :add_breadcrumb, name, url
        end
      end
    end

    protected

    def add_breadcrumb name, url = ''
      @breadcrumbs ||= []
      url = eval(url) if url =~ /_path|_url|@/
      @breadcrumbs << {name: name, url: url}
    end
  end
end