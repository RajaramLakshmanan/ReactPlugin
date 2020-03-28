require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-my-fancy-library"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-my-fancy-library
                   DESC
  s.homepage     = "https://github.com/RajaramLakshmanan/ReactPlugin/blob/master/README.md"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Rajaram" => "lrajarammca@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/RajaramLakshmanan/ReactPlugin.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,framework,swift}"

  s.requires_arc = true

  s.dependency "React"
  s.dependency 'Alamofire', '~> 4.8.0'
  s.dependency 'CryptoSwift', '~> 0.7.2'
  s.dependency 'Socket.IO-Client-Swift', '~> 15.0.0'
  s.dependency 'IDZSwiftCommonCrypto', '~> 0.12'
  s.dependency 'REIOSSDK_5f7a2e8e_1bdb_4739_9d28_278a2759394c'

  # ...
  # s.dependency "..."
end
