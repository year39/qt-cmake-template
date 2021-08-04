
#include "device.h"
#include "message.h"
#include "scanner.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQuickView>

int main(int argc, char *argv[]) {
  QGuiApplication app(argc, argv);

  // register a new QML type
  qmlRegisterType<Device>("com.project", 1, 0, "Device");

  // pass c++ object to QML
  // note create the object prior to declaring the engine
  Message msg;
  Scanner scanner;
  QQmlApplicationEngine engine;
  engine.rootContext()->setContextProperty("msg", &msg);
  engine.rootContext()->setContextProperty("scanner", &scanner);
  engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
  return app.exec();
}
