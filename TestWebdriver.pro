QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


HEADERS += \
    webdriverxx/include/webdriverxx/browsers/chrome.h \
    webdriverxx/include/webdriverxx/browsers/firefox.h \
    webdriverxx/include/webdriverxx/browsers/ie.h \
    webdriverxx/include/webdriverxx/detail/error_handling.h \
    webdriverxx/include/webdriverxx/detail/factories.h \
    webdriverxx/include/webdriverxx/detail/factories_impl.h \
    webdriverxx/include/webdriverxx/detail/finder.h \
    webdriverxx/include/webdriverxx/detail/finder.inl \
    webdriverxx/include/webdriverxx/detail/http_client.h \
    webdriverxx/include/webdriverxx/detail/http_connection.h \
    webdriverxx/include/webdriverxx/detail/http_request.h \
    webdriverxx/include/webdriverxx/detail/keyboard.h \
    webdriverxx/include/webdriverxx/detail/meta_tools.h \
    webdriverxx/include/webdriverxx/detail/resource.h \
    webdriverxx/include/webdriverxx/detail/shared.h \
    webdriverxx/include/webdriverxx/detail/time.h \
    webdriverxx/include/webdriverxx/detail/to_string.h \
    webdriverxx/include/webdriverxx/detail/types.h \
    webdriverxx/include/webdriverxx/by.h \
    webdriverxx/include/webdriverxx/capabilities.h \
    webdriverxx/include/webdriverxx/client.h \
    webdriverxx/include/webdriverxx/client.inl \
    webdriverxx/include/webdriverxx/conversions.h \
    webdriverxx/include/webdriverxx/element.h \
    webdriverxx/include/webdriverxx/element.inl \
    webdriverxx/include/webdriverxx/errors.h \
    webdriverxx/include/webdriverxx/js_args.h \
    webdriverxx/include/webdriverxx/keys.h \
    webdriverxx/include/webdriverxx/response_status_code.h \
    webdriverxx/include/webdriverxx/session.h \
    webdriverxx/include/webdriverxx/session.inl \
    webdriverxx/include/webdriverxx/types.h \
    webdriverxx/include/webdriverxx/wait.h \
    webdriverxx/include/webdriverxx/wait_match.h \
    webdriverxx/include/webdriverxx/webdriver.h \
    webdriverxx/include/webdriverxx/window.h \
    webdriverxx/include/webdriverxx.h \

INCLUDEPATH += C:/Qt/Qt5.12.2/5.12.2/mingw73_32/include \
                G:\Teamviewer\TestWebdriver\Webdriver-on-Qt\curl-7.64.1\curl-7.64.1\include

DEPENDPATH += C:/Qt/Qt5.12.2/5.12.2/mingw73_32/include


win32: LIBS += -L$$PWD/Release/ -llibcurl

INCLUDEPATH += $$PWD/Release
DEPENDPATH += $$PWD/Release

win32: LIBS += -L$$PWD/Release/ -llibcurl_imp

INCLUDEPATH += $$PWD/Release
DEPENDPATH += $$PWD/Release
