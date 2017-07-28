# Plugin to add environment variables to the `site` object in Liquid templates

module Jekyll
  class EnvironmentVariablesGenerator < Generator
    def generate(site)
      site.config['kolihost'] = ENV['KOLI_HOST'] || 'https://api.kolihub.io/'
    end
  end
end