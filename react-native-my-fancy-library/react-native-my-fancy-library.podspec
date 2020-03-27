require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-my-fancy-library"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-my-fancy-library
                   DESC
  s.homepage     = "https://www.npmjs.com/package/react-native-my-fancy-library-res"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Rajaram" => "lrajarammca@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-my-fancy-library.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,framework,swift}"
  
  s.requires_arc = true

  s.dependency "React"
  # ...
  # s.dependency "..."
end
