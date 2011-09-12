module TestTrack::TestsHelper
  def javascript_include_multiple( path )
    output = ""

    if path.kind_of?(Array)

      path.each do |p|
        output << javascript_include_tag(p)
      end

    else
      output << javascript_include_tag(path)
    end

    output.html_safe
  end
end
