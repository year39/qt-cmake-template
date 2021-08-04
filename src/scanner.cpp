#include "scanner.h"

Scanner::Scanner( QObject* parent ) : QObject( parent ) {
  auto d = new Device();
  d->setName("newDevice");
  m_devices.append( d );
}

QQmlListProperty<Device> Scanner::devices() {
  return {
    this, &m_devices
  };
}

int Scanner::deviceCount() {
  return m_devices.count();
}
