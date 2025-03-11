Pod::Spec.new do |s|
  s.name = 'FooOpenCV2'
  s.version = '4.11.0.1'
  s.source = { :git => "git@github.com:foodeveloper/Foo-OpenCV2.git", :tag => "#{s.version}" }
  s.authors           = { "Xing" => "charbel.hassrouny@foo-solutions.com"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Foo OpenCV2"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'
  s.subspec 'Framework' do |f|
       f.vendored_frameworks = 'xcframeworks/*.xcframework'
  end
end
