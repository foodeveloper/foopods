Pod::Spec.new do |s|
   
    s.name = 'FooEBankingWalletTransfers'
    s.version = '2.0.4'
    s.summary = "Foo EBanking Wallet Transfers"
    
    s.homepage = "http://foo.mobi"
    s.authors = {  "Abbas K"   => "abbas.kassab@foo.mobi",
                   "EEK"   => "elie.elkoreh@foo.mobi" }    
    s.ios.deployment_target = "15.0"

    s.source = { :git => 'git@github.com:foodeveloper/foo-ebanking-wallet-transfers.git', :tag => "#{s.version}" }
    s.pod_target_xcconfig = {
      'DEFINES_MODULE' => 'YES'
    }

    s.swift_versions = '5.0'
    s.default_subspec = 'Framework'
    
    s.subspec 'Framework' do |f|
        f.vendored_frameworks = 'xcframework/FooEBankingWalletTransfers.xcframework'
        f.dependency "FooEBankingWallet"
    end
end
