Pod::Spec.new do |s|
    s.name = 'OMPaySDK'
    s.version = '1.0.33'
    s.summary = "OMPaySDKFramework SDK Framework"
    
    s.homepage = "http://foo.mobi"
    s.authors = {"EEK" => "elie.elkoreh@foo.mobi" ,
                 "Abbas K"   => "abbas.kassab@foo.mobi", 
                 "Ali H"   => "ali.hassoun@foo-solutions.com", 
                 "Xing"   => "charbel.hassrouny@foo-solutions.com"}    

    s.ios.deployment_target = "15.0"
    s.source = { :git => 'git@github.com:foodeveloper/ompay-sdk.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    s.static_framework = true

    s.subspec 'Framework' do |f|
    f.vendored_frameworks = 'xcframework/OMPaySDK.xcframework'
    
f.dependency 'FooYeepalPreonboardingUI'
f.dependency 'FooYeepalAuthenticationUI', '2.0.21-ompay'
f.dependency 'FooYeepalMoreUI', '2.0.19-ompay'
f.dependency 'FooYeepalSupportUI'
f.dependency 'FooYeepalDashboardUI'
f.dependency 'FooYeepalUserInboxUI'
f.dependency 'FooYeepalLandingUI', '2.0.14-ompay'
f.dependency 'FooYeepalTransactionsHistoryUI', '2.0.20-ompay'
f.dependency 'FooYeepalFAQUI'
f.dependency 'FooAccountManagementUI'
f.dependency 'FooYeepalRequestsUI'
f.dependency 'FooYeepalCardManagementUI', '2.0.24-ompay'
f.dependency 'FooMbProgressHud'
f.dependency 'FooSdWebImage'
f.dependency 'FooYeepalP2PUI', '2.0.23-ompay'
f.dependency 'FooYeepalAddMoneyUI', '2.0.12-ompay'
f.dependency 'FooYeepalScanToPay', '2.0.10-ompay'
f.dependency 'FooYeepalR2PUI', '1.0.16-ompay'

f.dependency 'FooYeepalCoreUI', '2.0.33.13-ompay'
f.dependency 'FooRequesterWrapper', '1.0.29.5-ompay'
f.dependency 'FooR2P', '1.0.13-ompay'
f.dependency 'FooYeepalAliasCore', '1.0.0.3-ompay'
f.dependency 'FooYeepalAliasUI', '1.0.0.4-ompay'
f.dependency 'FooYeepalAliasBeneficiariesUI', '1.0.5-ompay'
f.dependency 'FooCardControl', '2.0.0.2-ompay'
f.dependency 'FooAddress', '2.0.3-ompay'
f.dependency 'FooDFCore', '2.0.3-ompay'
f.dependency 'FooPaymentManagement', '2.0.2-ompay'
f.dependency 'FooAccountManagement', '2.0.5-ompay'
f.dependency 'FooP2P', '2.0.1-ompay'
f.dependency 'FooRemittanceUI', '0.0.86-ompay'
f.dependency 'FooVCN', '2.0.1-ompay'
f.dependency 'FooFramework', '5.7.58-ompay'

f.dependency 'FrmKeychain'
f.dependency 'FooKeychainManager'
f.dependency 'FooEBankingWallet'
f.dependency 'OpenSSL-Universal', '1.1.2301'
f.dependency 'UqudoSDK', '3.4.2'


      f.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

    end
end
