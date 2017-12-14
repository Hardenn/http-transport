Pod::Spec.new do |s|
  s.name         = "HTTPTransport"
  s.version      = "4.0.0"
  s.summary      = "RedMadRobot HTTP transport library"
  s.description  = "Based on Alamofire. Implements synchronous transport"
  s.homepage     = "https://github.com/RedMadRobot/http-transport"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Jeorge Taflanidi" => "et@redmadrobot.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@github.com:RedMadRobot/http-transport.git", :tag => s.version, :branch => "master" }
  s.source_files = "Source/HTTPTransport/HTTPTransport/Classes/**/*"
  s.requires_arc = true
  s.dependency "Alamofire", "~> 4.6"

  s.preserve_paths = 'Source/CommonCryptoWrapper/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/HTTPTransport/Source/CommonCryptoWrapper/'
  }
end
