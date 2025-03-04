Pod::Spec.new do |s|
  s.name = 'FooNFCPassportReader'
  s.version = '2.1.2.1'
  s.source = { :git => 'git@github.com:foodeveloper/Foo-NFC-Passport-Reader.git', :tag => "#{s.version}" }
  s.authors = { 'Charbel Hasrouni' => 'charbel.hasrouni@foo.mobi' }
  s.ios.deployment_target = '14.0'
  s.summary = 'FOO NFC Passport Reader'
  s.homepage = 'http://foo.mobi'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_versions = "5.0"
  s.vendored_frameworks = 'xcframework/FooNFCPassportReader.xcframework'
  s.dependency 'OpenSSL-Universal', '1.1.2301'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

end