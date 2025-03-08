Pod::Spec.new do |s|
  s.name = 'ZainCashKYCDependencies'
  s.version = '0.0.6'
  s.source = { :git => 'git@github.com:foodeveloper/Zain-Cash-KYC-Dependencies.git', :tag => "#{s.version}" }
  s.authors           = { "Xing" => "charbel.hassrouny@foo-solutions.com"}
  s.ios.deployment_target = "15.0"
  s.summary      = "Zain Cash KYC Dependencies"
  s.homepage     = "http://foo.mobi"
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.default_subspecs = 'Framework'
  s.subspec 'Framework' do |f|
       f.vendored_frameworks = 'xcframeworks/*.xcframework'
  end
end
