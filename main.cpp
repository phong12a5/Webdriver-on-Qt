#include <QCoreApplication>

#include <webdriverxx/include/webdriverxx/webdriver.h>
#include <webdriverxx/include/webdriverxx/browsers/chrome.h>
#include <webdriverxx/include/webdriverxx/browsers/firefox.h>
#include <curl/curl.h>
#include <QDebug>
#include <QProcess>
#include <QDir>

using namespace webdriverxx;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Start at: " << QDir::currentPath();
//    qDebug() << "Starting server";
//    QProcess* process = new QProcess();
//    process->startDetached("run-server.bat");
//    qDebug() << process->readAllStandardOutput();
//    qDebug() << process->readAllStandardError();
//    qDebug() << "Exist: " << QFile(QDir::currentPath() + "/../TestWebdriver/run-server.bat").exists();
    WebDriver firefox = Start(Chrome());
    firefox
        .Navigate("http://google.com")
        .FindElement(ByCss("input[name=q]"))
        .SendKeys("Hello, world!")
        .Submit();
    qDebug() << "Stop";
    return a.exec();
}
