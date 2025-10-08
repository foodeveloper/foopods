Pod::Spec.new do |s|
  s.name = 'FooFramework'
  s.version = '5.7.57-ompay'
  s.source = { :git => 'git@github.com:foodeveloper/fooframework.git', :tag => "#{s.version}" }
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
       f.dependency "FooUser"
       f.dependency "FooSession"
       f.dependency "FooDevice"
       f.dependency "FooFrameworkSafe"
       f.dependency "FooLoaderManager"
       f.dependency "FooStringUtility"
       f.dependency "FooKeychainManager"
       f.dependency "FooFrameworkEncryption"
       f.dependency "FooAuthenticationManager"
       f.vendored_frameworks = 'xcframework/FooFramework.xcframework'
  end
end
