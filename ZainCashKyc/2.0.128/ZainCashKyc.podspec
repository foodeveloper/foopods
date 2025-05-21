Pod::Spec.new do |s|
    s.name = 'ZainCashKyc'
    s.version = '2.0.128'

    s.source = { :git => 'git@github.com:foodeveloper/Zain-Cash-KYC.git', :tag => "#{s.version}" }
    s.author       = { 'Abbas' => 'abbas.kassab@foo-solutions.com' }
    s.ios.deployment_target = '15.0'
    s.summary      = 'ZainCash Kyc.'
    s.homepage     = 'http://foo.mobi'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    s.default_subspecs = ['Framework']
    s.swift_versions = '5.0'  # Added Swift version
    s.static_framework = true
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/ZainCashKyc.xcframework'
        f.dependency 'ZainCashKYCDependencies'
        f.dependency 'FooFramework'
	f.dependency 'RecaptchaEnterprise','18.7.0'
    end
end

