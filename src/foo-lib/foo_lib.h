#pragma once

#include <QtCore/qglobal.h>

#if defined(FOO_LIBRARY)
#  define FOOSHARED_EXPORT Q_DECL_EXPORT
#else
#  define FOOSHARED_EXPORT Q_DECL_IMPORT
#endif
