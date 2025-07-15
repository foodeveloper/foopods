Pod::Spec.new do |s|
    s.name = 'OMPaySDK'
    s.version = '1.0.1'
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

        f.dependency 'FooAccountManagementUI'
        f.dependency 'FooYeepalCoreUI', '2.0.33.2-ompay'
f.dependency 'FooAddress'
f.dependency 'FooCardControl'
f.dependency 'FooEBankingWallet'
f.dependency 'FooKeychainManager'
f.dependency 'FooMbProgressHud'
f.dependency 'FooR2P'
f.dependency 'FooRequesterWrapper'
f.dependency 'FooSdWebImage'
f.dependency 'FooYeepalAddMoneyUI', '2.0.12-ompay'
f.dependency 'FooYeepalAliasCore'
f.dependency 'FooYeepalAliasUI', '1.0.0.3-ompay'
f.dependency 'FooYeepalAuthenticationUI', '2.0.10-ompay'
f.dependency 'FooYeepalCardManagementUI', '2.0.18-ompay'
f.dependency 'FooYeepalCoreUI'
f.dependency 'FooYeepalDashboardUI'
f.dependency 'FooYeepalFAQUI'
f.dependency 'FooYeepalLandingUI', '2.0.14-ompay'
f.dependency 'FooYeepalMoreUI', '2.0.18-ompay'
f.dependency 'FooYeepalP2PUI', '2.0.19-ompay'
f.dependency 'FooYeepalPreonboardingUI'
f.dependency 'FooYeepalR2PUI', '1.0.9-ompay'
f.dependency 'FooYeepalRequestsUI'
f.dependency 'FooYeepalScanToPay', '2.0.9-ompay'
f.dependency 'FooYeepalSupportUI'
f.dependency 'FooYeepalTransactionsHistoryUI', '2.0.19-ompay'
f.dependency 'FooYeepalUserInboxUI'
f.dependency 'FrmKeychain'
f.dependency 'OpenSSL-Universal', '1.1.2301'
f.dependency 'UqudoSDK'
f.dependency 'FooYeepalAliasBeneficiariesUI', '1.0.2-ompay'
f.dependency 'FooDFCore', '2.0.2-ompay'
f.dependency 'FooEBankingWalletTransfers'

      f.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}

    end
end
