require 'rails/generators'

module Bootstrapped
  module Generators
    class LayoutGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "This generator generates layout file with navigation."
      argument :layout_name, :type => :string, :default => "application"
      argument :layout_type, :type => :string, :default => "fixed",
               :banner => "*fixed or fluid"

      attr_reader :app_name, :container_class

      def generate_layout
        app = ::Rails.application
        @app_name = app.class.to_s.split("::").first
        @container_class = layout_type == "fluid" ? "container-fluid" : "container"
        ext = app.config.generators.options[:rails][:template_engine] || :erb
        template "layout.html.#{ext}", "app/views/layouts/#{layout_name}.html.#{ext}"
        template "_bootstrapped-navigation.html.#{ext}", "app/views/layouts/_bootstrapped-navigation.html.#{ext}"
        # Add our own require:
        layout_name_here = "  layout '#{layout_name}'\n"
        insert_into_file "app/controllers/application_controller.rb'", layout_name_here, :after => "protect_from_forgery\n"
      end
    end
  end
end
