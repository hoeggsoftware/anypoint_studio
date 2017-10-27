module AnypointStudio
  module Helper
    def anypoint_bucket
      'https://mule-studio.s3.amazonaws.com/'
    end

    def latest_anypoint
      require 'nokogiri'
      require 'open-uri'

      bucket = Nokogiri::XML(open(anypoint_bucket))
      latest = bucket.search("Key").find_all do |key|
        key.child.to_s =~ /\d\.\d\.\d-U\d\/AnypointStudio-for-win-64bit/
      end.sort_by { |key| key.child.to_s }
      raise "Didn't find a valid result for latest anypoint" if latest.empty?
      raise "Structure of the xml being parsed has been changed" if latest.last.child == nil
      latest.last.child.to_s
    end

    def anypoint_zip
      anypoint_bucket + latest_anypoint
    end
  end
end
