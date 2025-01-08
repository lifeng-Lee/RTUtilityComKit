Pod::Spec.new do |s|
  s.name         = "RTUtilityComKit"
  s.version      = "1.0.0"
  s.summary      = "简单的工具库，测试"
  s.homepage     = "https://github.com/lifeng-Lee/RTUtilityComKit"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "feng" => "1621940097@qq.com" }
  s.social_media_url   = "https://github.com/lifeng-Lee"
  # 设置最低支持的 iOS 版本
  s.ios.deployment_target = "12.0"
  s.source       = { :git => "https://github.com/lifeng-Lee/RTUtilityComKit.git", :tag => s.version.to_s }
  # 指定源代码文件： 递归包含 Classes 目录下的所有文件
  s.source_files = 'RTUtilityComKit/Classes/**/*.{h,m,swift}'
  # 资源文件配置方式1
  # 这种方式会将 RTUtilityComKit.bundle 目录下的所有文件（包括图片、音频等）添加为资源文件，并把它们作为独立资源包含在库中
  s.resources    = 'RTUtilityComKit/RTUtilityComKit.bundle/**/*'
  # 资源文件配置方式2
  # 这种方式将 RTUtilityComKit.bundle 目录下的所有文件打包到一个名为 RTUtilityComKitResources 的资源包中
  # s.resource_bundles = {
  # 'RTUtilityComKitResources' => ['RTUtilityComKit/RTUtilityComKit.bundle/**/*']
  # }
  # 添加依赖项
  s.dependency 'SnapKit', '~> 5.6.0'
  s.dependency 'MJRefresh', '~> 3.7.6'
  # 指定 Swift 版本
  s.swift_versions = '5.0' 
  ########################### 这显以上基本是必须配置的 ###############################
  #这个与xcode 自带生成的 RTUtilityComKit.docc 文件夹有关，文档管理，可以忽略
  # s.documentation = { :type => 'docc', :path => 'RTUtilityComKit.docc'}

end
