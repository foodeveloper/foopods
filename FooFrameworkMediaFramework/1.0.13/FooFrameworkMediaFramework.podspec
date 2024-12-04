Pod::Spec.new do |s|
  s.name         = "FooFrameworkMediaFramework"
  s.version      = "1.0.13"
  s.source = { :git => "git@github.com:foodeveloper/foo-framework-media.git", :tag => "#{s.version}"}
  s.authors            = {  "Rami" => "rami.fatayri@foo-solutions.com",
                          "Sq"   => "samer.marrash@foo-solutions.com",
                          "Xing" => "charbel.hassrouny@foo-solutions.com",
                          "Abbas"   => "abbas.kassab@foo-solutions.com",
                          "Ali"   => "ali.hassoun@foo-solutions.com" }
  s.ios.deployment_target = "15.0"
  s.summary      = "FOO Framework Media"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'
  s.subspec 'Framework' do |f|
        f.dependency "FooFrameworkFramework"
        f.dependency "FooMediaManagerFramework"
        f.dependency "FooStringUtilityFramework"
        f.vendored_frameworks = 'xcframework/FooFrameworkMedia.xcframework'
  end
end