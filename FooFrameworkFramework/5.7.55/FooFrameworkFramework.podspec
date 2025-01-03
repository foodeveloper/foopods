Pod::Spec.new do |s|
  s.name         = "FooFrameworkFramework"
  s.version      = "5.7.55"
  s.source = { :git => "git@github.com:foodeveloper/fooframework.git", :tag => "#{s.version}" }
  s.authors           = { "Rami" => "rami.fatayri@foo-solutions.com",
                            "Sq"   => "samer.marrash@foo-solutions.com",
                            "Xing" => "charbel.hassrouny@foo-solutions.com",
                            "Abbas"   => "abbas.kassab@foo-solutions.com",
                            "Ali"   => "ali.hassoun@foo-solutions.com",
                            "Elie"  => "elie.elkoreh@foo-solutions.com",
                            "Vanessa El Khoury" => "vanessa.elkhoury@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
  s.summary      = "FOO Framework"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'
  s.subspec 'Framework' do |f|
       f.dependency "TrustKit"
       f.dependency "FooUserFramework"
       f.dependency "FooSessionFramework"
       f.dependency "FooDeviceFramework"
       f.dependency "FooFrameworkSafeFramework"
       f.dependency "FooLoaderManagerFramework"
       f.dependency "FooStringUtilityFramework"
       f.dependency "FooKeychainManagerFramework"
       f.dependency "FooFrameworkEncryptionFramework"
       f.dependency "FooAuthenticationManagerFramework"
       f.vendored_frameworks = 'xcframework/FooFramework.xcframework'
  end
end
