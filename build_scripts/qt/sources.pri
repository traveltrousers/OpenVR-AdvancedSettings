SOURCES += src/main.cpp\
    src/overlaycontroller.cpp \
    src/tabcontrollers/AudioTabController.cpp \
    src/tabcontrollers/ChaperoneTabController.cpp \
    src/tabcontrollers/FixFloorTabController.cpp \
    src/tabcontrollers/MoveCenterTabController.cpp \
    src/tabcontrollers/SettingsTabController.cpp \
    src/tabcontrollers/StatisticsTabController.cpp \
    src/tabcontrollers/SteamVRTabController.cpp \
    src/tabcontrollers/ReviveTabController.cpp \
    src/tabcontrollers/UtilitiesTabController.cpp \
    src/tabcontrollers/PttController.cpp \
    src/utils/ChaperoneUtils.cpp \
    src/tabcontrollers/audiomanager/AudioManagerDummy.cpp \
    src/tabcontrollers/keyboardinput/KeyboardInputDummy.cpp \
    src/overlaycontroller/openvr_init.cpp \
    src/ivrinput/ivrinput.cpp

HEADERS += src/overlaycontroller.h \
    src/tabcontrollers/AudioTabController.h \
    src/tabcontrollers/ChaperoneTabController.h \
    src/tabcontrollers/FixFloorTabController.h \
    src/tabcontrollers/MoveCenterTabController.h \
    src/tabcontrollers/SettingsTabController.h \
    src/tabcontrollers/StatisticsTabController.h \
    src/tabcontrollers/SteamVRTabController.h \
    src/tabcontrollers/ReviveTabController.h \
    src/tabcontrollers/UtilitiesTabController.h \
    src/tabcontrollers/AudioManager.h \
    src/tabcontrollers/PttController.h \
    src/tabcontrollers/KeyboardInput.h \
    src/utils/Matrix.h \
    src/utils/ChaperoneUtils.h \
    src/tabcontrollers/audiomanager/AudioManagerDummy.h \
    src/tabcontrollers/keyboardinput/KeyboardInputDummy.h \
    src/overlaycontroller/openvr_init.h \
    src/ivrinput/ivrinput_action.h \
    src/ivrinput/ivrinput_manifest.h \
    src/ivrinput/ivrinput_action_set.h \
    src/ivrinput/ivrinput.h

win32 {
    SOURCES += src/tabcontrollers/audiomanager/AudioManagerWindows.cpp \
        src/tabcontrollers/keyboardinput/KeyboardInputWindows.cpp
    HEADERS += src/tabcontrollers/audiomanager/AudioManagerWindows.h \
                src/tabcontrollers/audiomanager/IPolicyConfig.h \
        src/tabcontrollers/keyboardinput/KeyboardInputWindows.h
}

INCLUDEPATH += third-party/openvr/headers \
                        third-party/easylogging++
#easylogging++ used to be a header only lib. Now requires easylogging++.cc
SOURCES += third-party/easylogging++/easylogging++.cc