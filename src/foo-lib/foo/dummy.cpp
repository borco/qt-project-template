#include "dummy.h"

namespace foo {

Dummy::Dummy(QObject *parent) : QObject(parent)
{
    setName("Foo");
}

QString Dummy::name() const
{
    return m_name;
}

void Dummy::setName(QString name)
{
    if (m_name == name)
        return;

    m_name = name;
    emit nameChanged(m_name);
}

} // namespace gp
