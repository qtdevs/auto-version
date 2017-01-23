# qmake 版本号自动生成工具

本项目可以通过 Git 仓库的 SHA-1 值 (Commit ID)，自动生成一个包含提交编号、修订日期、提交日期和构建日期的头文件，只需要将这个仓库签出到目标目录，并包含相应的文件即可。

#### 用法：

1. 在目标项目中包含 `version.pri` 文件：

``` c++
// pro or pri file
include(auto-version/version.pri)
```

2. 在需要的位置包含版本号头文件：

``` c++
#include <QtCore>

#include "version.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qDebug("提交编号：%s", QT_GIT_COMMIT_ID);
    qDebug("修订日期：%s", QT_GIT_AMEND_DATE);
    qDebug("提交日期：%s", QT_GIT_COMMIT_DATE);
    qDebug("构建日期：%s", QT_GIT_BUILD_DATE);

    return a.exec();
}

```
