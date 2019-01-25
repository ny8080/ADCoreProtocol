Pod::Spec.new do |s|
  s.name         = "TDFCoreProtocol"
  s.version      = "0.0.1"
  s.summary      = "basic TDFCoreProtocol"

  s.description  = <<-DESC
  TDFCoreProtocol 为了兼容老协议，进行抽离
                   DESC

  s.homepage     = "https://github.com/ny8080/ADCoreProtocol"

  s.license      = "LICENSE.md"
  s.author             = { "tripleCC" => "qingmu@2dfire.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ny8080/ADCoreProtocol.git", tag: s.version }

  s.source_files = 'Classes/*.{m,h}'
  s.public_header_files = 'Classes/*.h'

end
