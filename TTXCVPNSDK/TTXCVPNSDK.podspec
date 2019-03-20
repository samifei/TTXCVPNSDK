#
#  Be sure to run `pod spec lint TTXCVPNSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


#名称
s.name         = 'TTXCVPNSDK'

#版本号
s.version      = '0.0.1'

#许可证
s.license      = { :type => 'MIT' } 

#项目主页地址 
s.homepage     = 'https://github.com/samifei/TTXCVPNSDK'    

#作者
s.authors      = { 'samlfei' => 'samlfi@163.com' }

#简介
s.summary      = 'A delightful iOS framework.'  

#项目的地址 （注意这里的tag位置，可以自己写也可以直接用s.version，但是与s.version一定要统一）
s.source       = { :git => 'https://github.com/samifei/TTXCVPNSDK.git', :tag => s.version }

#支持最小系统版本
s.platform     = :ios, '8.0'

#依赖库
s.libraries    = 'iconv', 'xml2'
#依赖库
s.frameworks   = 'UIKit','Foundation','CoreGraphics','SystemConfiguration','Security'


#你的SDK路径
s.vendored_libraries =  'TTXCVPNSDK/VPNSDK/libProxy.a'
#s.vendored_frameworks = 'TTXCVPNSDK/VPNSDK/openssl.framework'

#SDK头文件路径
#s.public_header_files = 'MyFirstFramework/MyFirstFramework.framework/Headers/MyFirstFramework.h'


#需要包含的源文件 
s.source_files  ="TTXCVPNSDK/VPNSDK/*.h"

#s.public_header_files = "Classes/**/*.h"

end
