require 'haml-rails'
require 'jquery-rails'
require 'foundation-rails'

module FoundationSlides
  module SlideHelper
    def ir_slides(arr,options,&block)
        capture_haml do
          haml_tag 'div.orbit', "aria-label" => "", "data-orbit" => "", :role => "region" do
            haml_tag 'ul.orbit-container',data_options: options do
              haml_tag 'button.orbit-previous' do
                haml_tag 'span.show-for-sr','Previous Slide' 
                haml_tag 'span',"&#9664;&#xFE0E;".html_safe
              end
              haml_tag 'button.orbit-next' do
                  haml_tag 'span.show-for-sr',"Next Slide"
                  haml_tag 'span',"&#9654;&#xFE0E;".html_safe
              end
              arr.each do |s|
                haml_tag 'li.orbit-slide' do
                  block.call s
                end
              end
            end
          end
        end
      end
  end
  module Extensions
    class Railtie < ::Rails::Railtie
      initializer 'foundation_slides.add_helpers' do
        ActionView::Base.send :include, FoundationSlides::SlideHelper
      end
    end
  end
end
