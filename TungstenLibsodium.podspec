Pod::Spec.new do |s|
  s.name      = "TungstenLibsodium"
  s.version   = "1.0.0"
  s.summary   = "TungstenLibsodium"
  s.authors   = { "Tungsten Labs UG" => "https://tungstenapp.com/"}
  s.source    = { :git => "https://github.com/TungstenLabs/tungsten-libsodium.git", :tag => "#{s.version}" }
  s.homepage  = "https://github.com/TungstenLabs/tungsten-libsodium"
  s.license   = 'LICENSE*.*'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  
  s.ios.source_files          = "libsodium/libsodium-ios/include/**/*.{h}", "apple/main.m"
  s.ios.vendored_libraries    = "libsodium/libsodium-ios/lib/libsodium.a"
  s.ios.header_mappings_dir   = "libsodium/libsodium-ios/include"
  s.ios.xcconfig              = { 
                                  "OTHER_LDFLAGS" => "-all_load"
                                }

  s.osx.source_files          = "libsodium/libsodium-osx/include/**/*.{h}", "apple/main.m"
  s.osx.vendored_libraries    = "libsodium/libsodium-osx/lib/libsodium.a"
  s.osx.header_mappings_dir   = "libsodium/libsodium-osx/include"
  s.osx.xcconfig              = { 
                                  "OTHER_LDFLAGS" => "-all_load"
                                }

  s.libraries = "sodium"
end
