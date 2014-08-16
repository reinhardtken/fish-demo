LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp

LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/BackgroundLayer.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/Bullet.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/Cannon.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/CannonLayer.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/Fish.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/FishingJoyData.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/FishingNet.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/FishLayer.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/GameScene.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/MenuLayer.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/PanelLayer.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/StaticData.cpp
LOCAL_SRC_FILES += ../../Classes/FishingJoy_FirstIteration/Weapon.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../Classes/FishingJoy_FirstIteration

LOCAL_WHOLE_STATIC_LIBRARIES += cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += chipmunk_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,cocos2dx)
$(call import-module,cocos2dx/platform/third_party/android/prebuilt/libcurl)
$(call import-module,CocosDenshion/android)
$(call import-module,extensions)
$(call import-module,external/Box2D)
$(call import-module,external/chipmunk)
