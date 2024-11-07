Pod::Spec.new do |s|
  s.name         = "FooFrameworkFirebaseFramework"
  s.version      = "1.0.4"
  s.source = { :git => "git@github.com:foodeveloper/foo-framework-firebase.git", :tag => "#{s.version}" }
  s.authors            = {  "Rami" => "rami.fatayri@foo-solutions.com",
                            "Sq"   => "samer.marrash@foo-solutions.com",
                            "Xing" => "charbel.hassrouny@foo-solutions.com",
                            "Abbas"   => "abbas.kassab@foo-solutions.com",
                            "Ali"   => "ali.hassoun@foo-solutions.com"}
  s.ios.deployment_target = "15.0"
  s.summary      = "FOO Framework FooFirebase Extension"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'
  s.static_framework = true
  s.subspec 'Framework' do |f|
    f.dependency "FooFrameworkFramework"
        f.dependency "Firebase/Core"
        f.dependency "Firebase/Messaging"
        f.dependency "Firebase/Analytics"
        f.vendored_frameworks = 'xcframework/FooFrameworkFirebase.xcframework'
    end
end
