Pod::Spec.new do |s|

  s.name         = 'FooMasterPassQrScanner'
  s.version      = '2.0.1'
  s.source = { :git => 'git@github.com:foodeveloper/Foo-MasterPassQr-Scanner.git', :tag => "#{s.version}" }
  s.platform     = :ios, '15.0'
  s.authors       = { 'EEK' => 'elie.elkoreh@foo-solutions.com',
                      'Sqmer' => 'samer.marrash@foo-solutions.com',
                      'Charbel Hasrouni' => 'charbel.hasrouni@foo.mobi'}
  s.summary      = 'FOO MasterPassQrScanner.'
  s.homepage     = 'http://foo.mobi'
  s.license      = 'MIT'

  s.description  = 'Objective-c Framework of FOO MasterPassQrScanner.'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }

  s.default_subspecs = 'Framework'
           
  s.subspec 'Framework' do |f|
        f.dependency 'FooAesGcm'
        f.dependency 'FooAuthenticationManager'
        f.dependency 'FooDevice'
        f.dependency 'FooFrameworkEncryption'
        f.dependency 'FooFrameworkSafe'
        f.dependency 'FooKeychainManager'
        f.dependency 'FooStringUtility'
        f.dependency 'FrmKeychain'
        f.ios.vendored_frameworks = 'xcframework/FooMasterPassQrScanner.xcframework'
  end
end

