#ifndef MYCOMM_H
#define MYCOMM_H

#include <QObject>
#include <QQuickItem>
#include <QDebug>
#include <QTimer>
#include <QProcess>
#include "qmqtt.h"

class MyComm : public QObject
{
    Q_OBJECT
public:
    explicit MyComm(QObject *parent = nullptr);
    QMQTT::Client *client;

    QObject* mainPage;

    void QMLhandler(QObject *externalMainPage);
    void start();

signals:

public slots:
    void onConnected();
    void onReceived(const QMQTT::Message &message);
    void onDisconnected();
    void shutdown();
    void setRPiTemp();
};

#endif // MYCOMM_H
