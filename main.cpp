#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickItem>
#include "mycomm.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QObject* mainPage = engine.rootObjects().first();

    MyComm mycomm;
    mycomm.QMLhandler(mainPage);
    mycomm.start();

    return app.exec();
}
