Pod::Spec.new do |s|
  s.name         = 'FooFrameworkSafe'
  s.version      = '1.0.7'
  s.source = { :git => 'git@github.com:foodeveloper/foo-framework-safe.git', :tag => "#{s.version}" }
  s.authors      = { "Sq"   => "samer.marrash@foo.mobi", "Xing" => "charbel.hasrouni@foo.mobi" }
  s.ios.deployment_target = '15.0'
  s.summary      = "FOO Framework Safe"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }    
  s.default_subspecs = 'Framework'
  s.subspec 'Framework' do |d|
      d.vendored_frameworks = 'xcframework/FooFrameworkSafe.xcframework'
  end
end
