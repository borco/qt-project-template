#pragma once

#include "../foo_lib.h"
#include <QObject>

namespace foo {

class FOOSHARED_EXPORT Dummy : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)

    QString m_name;

public:
    explicit Dummy(QObject *parent = nullptr);
    QString name() const;

signals:
    void nameChanged(QString name);

public slots:
    void setName(QString name);
};

} // namespace gp
