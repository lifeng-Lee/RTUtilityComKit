Pod::Spec.new do |s|
  s.name         = "RTUtilityComKit"
  s.version      = "1.0.0"
  s.summary      = "简单的工具库，测试"
  s.homepage     = "https://github.com/lifeng-Lee/RTUtilityComKit"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "feng" => "1621940097@qq.com" }
  s.social_media_url   = "https://github.com/lifeng-Lee"
  # 设置最低支持的 iOS 版本
  s.ios.deployment_target = "13.0"
  s.source       = { :git => "https://github.com/lifeng-Lee/RTUtilityComKit.git", :tag => s.version.to_s }
  # 指定源代码文件： 递归包含 Classes 目录下的所有文件
  s.source_files = 'RTUtilityComKit/Classes/**/*.{h,m,swift}'
  # 资源文件配置
  s.resources    = 'RTUtilityComKit/RTUtilityComKit.bundle/**/*'
end