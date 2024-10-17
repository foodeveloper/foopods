Pod::Spec.new do |s|

    s.name = "FooAppleWalletFramework"
    s.version = "1.1.14"
    s.source = { :git => "git@github.com:foodeveloper/foo-apple-pay.git", :tag => "#{s.version}"}

    s.authors = {  "Xing"   => "charbel.hassrouny@foo-solutions.com", "Sq" => "samer.marrash@foo-solutions.com", "Sami" => "sami.sharaf@foo-solutions.com"}
    s.ios.deployment_target = "14.0"

    s.summary = "Foo Apple Wallet"
    s.homepage = "http://foo.mobi"
    s.license= "MIT"

    s.frameworks = ["PassKit"]

    s.default_subspecs = 'Framework'
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }

    s.subspec 'Framework' do |f|
        f.ios.vendored_frameworks = 'xcframework/FooAppleWallet.xcframework'
    end
end
