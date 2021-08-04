#pragma once
#include "device.h"
#include <QObject>
#include <QQmlListProperty>
#include <QList>

class Scanner: public QObject {
  Q_OBJECT
  Q_PROPERTY(QQmlListProperty<Device> devices READ devices NOTIFY newDevice)
  Q_PROPERTY(int count READ deviceCount NOTIFY newDevice)

 public:
  Scanner(QObject* parent = nullptr);
  QQmlListProperty<Device> devices();
  int deviceCount();

 signals:
  void newDevice();

 private:
  QList<Device*> m_devices;
};
