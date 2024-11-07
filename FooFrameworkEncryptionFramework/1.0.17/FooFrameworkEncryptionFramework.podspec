Pod::Spec.new do |s|
  s.name         = "FooFrameworkEncryptionFramework"
  s.version      = "1.0.17"
  s.source = { :git => "git@github.com:foodeveloper/foo-framework-encryption.git", :tag => "#{s.version}"}
  s.ios.deployment_target = "15.0"
  s.authors            = {  "Rami" => "rami.fatayri@foo-solutions.com",
                            "Sq"   => "samer.marrash@foo-solutions.com",
                            "Xing" => "charbel.hassrouny@foo-solutions.com",
                            "Abbas"   => "abbas.kassab@foo-solutions.com",
                            "Ali"   => "ali.hassoun@foo-solutions.com"}
  
  s.summary      = "FOO Framework Encryption"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'

  s.subspec 'Framework' do |f|
      f.dependency "FooAesGcmFramework"
      f.dependency "FooFrameworkSafeFramework"
      f.dependency "FooStringUtilityFramework"
      f.vendored_frameworks = 'xcframework/FooFrameworkEncryption.xcframework'
  end
end
