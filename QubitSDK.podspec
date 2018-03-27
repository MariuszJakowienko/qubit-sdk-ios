Pod::Spec.new do |s|

  s.name         = "QubitSDK"

  s.version      = "0.3.3"

  s.summary      = "User activity tracking for iOS"

  s.description  = <<-DESC
                   Qubit user activity tracking for iOS
                   DESC

  s.homepage     = "http://www.qubitproducts.com"

  #TODO: change license
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  s.authors      = { "Dariusz Zajac" => "dariusz.zajac@miquido.com", "Pavlo Davydiuk" => "pavlo.davydiuk@miquido.com" }

  s.platform     = :ios, "9.0"

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0.3', "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES" => "YES" }

  s.source       = { :git => "https://github.com/qubitdigital/qubit-sdk-ios.git", :tag => "#{s.version}" }

  s.ios.vendored_frameworks = 'Framework/QubitSDK.framework'

  s.framework  = "CoreData"

s.xcconfig = {'SWIFT_INCLUDE_PATHS' => '${SRCROOT}/CommonCrypto' }
s.preserve_paths = 'QBTracker/CommonCrypto/module.modulemap'

end
