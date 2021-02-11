# Copyright (c) 2021, Tercept (https://www.tercept.com/)
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


Pod::Spec.new do |spec|
  spec.name               = 'TerceptSDK'
  spec.version            = '1.0.20'
  spec.author             = { 'Gourav Chindlur' => 'hello@tercept.com' }
  spec.license            = { :type => 'BSD', :file => 'LICENSE' }
  spec.homepage           = 'http://tercept.com'
  spec.summary            = 'Tercept SDK for analytics'
  spec.description        = 'This static iOS library is used for collecting the Performance Data Platform for Digital Publishers'

  spec.source             = { :git => 'https://github.com/Tercept-Inc/Tercept-SDK-iOS.git', :tag => spec.version.to_s }

  spec.platform              = :ios, "12.0"
  spec.ios.deployment_target = "12.0"
  
  spec.vendored_libraries = 'libTerceptSDK.a'
  spec.xcconfig           = {
                              'OTHER_LDFLAGS'                  => '-ObjC -lTerceptSDK'
                            }

  spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,
                                'EXCLUDED_ARCHS[sdk=watchsimulator*]'  => 'arm64' }

  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' ,
                                'EXCLUDED_ARCHS[sdk=watchsimulator*]'  => 'arm64' }


end
