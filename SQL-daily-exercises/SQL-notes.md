### 在 MySQL 中，不要使用 utf8，而是使用 **utf8mb4**

原文链接：https://adamhooper.medium.com/in-mysql-never-use-utf8-use-utf8mb4-11761243e434

原因：MySQL 中的「utf8」是一种「专属编码」，只能存储 3 个字节；而 utf8mb4 能存储 4 个字节，这才是真正的「utf8」。

### 在 MySQL 中，如何清空命令行界面？

在 Linux 中：mysql> "system clear";

在 Win 中：mysql> "s"ystem cls";

### 在 MySQL 中，如何查看命令执行时间？

首先，在命令行界面输入："set profiling=1;"；
其次，**输入某个命令后**，再输入："show profiles;"，即可查看命令的执行时间。