source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'

use_frameworks!
#use_modular_headers!
inhibit_all_warnings!

def shared_pods
    
    pod 'SnapKit', '~> 5.6.0'
    pod 'MJRefresh', '~> 3.7.6'
    
end

target 'RTUtilityComKit' do
    shared_pods
end


post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
        end
    end
end


