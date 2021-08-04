#include "device.h"
#include <QTimer>

Device::Device()
    : deviceName("") {
  QTimer *timer = new QTimer(this);
  connect(timer, &QTimer::timeout, this, &Device::update);
  timer->start(3000);
}

int Device::increment(int value) {
  return value + 1;
}

QString Device::name() const {
  return deviceName;
}

void Device::setName(const QString &value) {
  if (deviceName != value) {
    deviceName = value;
    deviceChanged();
  }
}

void Device::update() {
  deviceName = "update";
  emit deviceChanged();
}
