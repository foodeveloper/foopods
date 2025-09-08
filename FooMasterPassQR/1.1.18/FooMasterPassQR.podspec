Pod::Spec.new do |s|
	s.name = 'FooMasterPassQR'
	s.version = '1.1.18'
	s.source = { :git => 'git@github.com:foodeveloper/foo_masterpass_qr.git', :tag => "#{s.version}" }
	s.ios.deployment_target = '15.0'
	s.author            = { 'Amena' => 'amena.amro@foo-solutions.com' }
	s.summary           = 'FOO MasterPass Framework'
	s.homepage          = 'http://foo.mobi'
	s.pod_target_xcconfig = { "DEFINES_MODULE" => "YES" }
	s.default_subspecs = 'Framework'
    s.subspec 'Framework' do |f|
    	f.dependency "FooFrameworkSafe"
        f.vendored_frameworks = 'xcframework/FooMasterPassQR.xcframework'
    end
end
