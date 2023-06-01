Pod::Spec.new do |s|
  s.name         = "CryptoXC"
  s.version      = "0.1" #1.6.0
  s.source       = { :git => "https://github.com/tareq3/CrytoXCFramework.git", :tag => "#{s.version}" }
  s.summary      = "Cryptography in Swift. SHA, MD5, CRC, PBKDF, Poly1305, HMAC, CMAC, HDKF, Scrypt, ChaCha20, Rabbit, Blowfish, AES, RSA."
  s.description  = "Cryptography functions and helpers for Swift implemented in Swift. SHA-1, SHA-2, SHA-3, MD5, PBKDF1, PBKDF2, Scrypt, CRC, Poly1305, HMAC, ChaCha20, Rabbit, Blowfish, AES, RSA"
  s.homepage     = "https://github.com/tareq3/CrytoXCFramework"
  s.license      = { :type => 'MIT' }
  s.authors      = {'Tareq' => 'mti.tareq3@gmail.com'}
  s.requires_arc = true
  # s.cocoapods_version = '>= 1.10.0'
  # s.swift_version = "5.6"
  s.ios.deployment_target = "11.0"
 
  # s.source_files  = "Sources/CryptoSwift/**/*.swift"
  s.requires_arc = true
   s.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }

   s.default_subspec = 'Debug'

  s.subspec 'Debug' do |sp|
    sp.vendored_frameworks = 'CryptoXC.xcframework' 
  end

  s.subspec 'Release' do |sp|
    sp.vendored_frameworks =  'CryptoXC.xcframework' 
  end

  s.pod_target_xcconfig = { 

  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'

 }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  
end
