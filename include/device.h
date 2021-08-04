#pragma once
#include <QObject>
#include <QQmlEngine>

class Device: public QObject {
  Q_OBJECT
  Q_PROPERTY(QString name READ name WRITE setName NOTIFY deviceChanged)

 public:
  Device();

 public slots:  // slots are public methods available in QML
  int increment(int value);

 signals:
  void deviceChanged();

 public:
  QString name() const;
  void setName(const QString &value);
  void update();

 private:
  QString deviceName;
};
