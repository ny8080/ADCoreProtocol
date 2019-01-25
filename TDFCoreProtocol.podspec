Pod::Spec.new do |s|
  s.name         = "TDFCoreProtocol"
  s.version      = "1.2.11"
  s.summary      = "basic TDFCoreProtocol"

  s.description  = <<-DESC
  TDFCoreProtocol 为了兼容老协议，进行抽离
                   DESC
  s.homepage     = "http://git.2dfire.net:ios/TDFCoreProtocol"

  s.license      = "LICENSE.md"
  s.author             = { "tripleCC" => "qingmu@2dfire.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "git@git.2dfire.net:ios/TDFCoreProtocol.git", tag: s.version }

  tdfire_source_configurator = lambda do |s|
    s.source_files = 'Classes/*.{m,h}'
    s.public_header_files = 'Classes/*.h'
  end


  unless %w[tdfire_set_binary_download_configurations tdfire_source tdfire_binary].reduce(true) { |r, m| s.respond_to?(m) & r }
      
    tdfire_source_configurator.call s
  else
    s.tdfire_source tdfire_source_configurator
    s.tdfire_binary tdfire_source_configurator
    s.tdfire_set_binary_download_configurations
  end

end
