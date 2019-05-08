
Pod::Spec.new do |s|
s.name         = "DSHPageViewController"
s.version      = "0.0.1"
s.summary      = "分页控制器"
s.description  = <<-DESC
一个轻量级的分页控制器，用来自己在项目中配合 JXCategoryView 使用
DESC
s.homepage     = "https://github.com/568071718/PageViewController"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author       = { "lu" => "568071718@qq.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/568071718/PageViewController.git", :tag => s.version }
s.requires_arc = true
s.source_files = 'Classes'
end
