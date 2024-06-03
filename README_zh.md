# Tool Services Manager

Tool Services Manager 是一个用于管理系统服务的 Bash 脚本。它能够检查、启动、停止和重启服务，并提供多语言支持。

## 功能

- **服务状态检查**：检测所有服务的运行状态，并提供详细的日志信息。
- **服务管理**：支持启动、停止和重启服务。
- **自动重启**：在服务检测到运行异常时，可以选择自动重启。
- **多语言支持**：根据系统语言自动选择对应的语言文件，提供多语言提示信息。
- **颜色输出**：使用颜色区分不同的提示信息，便于识别。

## 安装

### 1. 从源码构建安装

1. 克隆仓库：

    ```sh
    git clone https://github.com/yukaichao/tool-services-manager.git
    cd tool-services-manager
    ```

2. 构建包：

    ```sh
    sudo dpkg-deb --build tool-services-package
    ```

3. 安装：

    ```sh
    sudo dpkg -i ./tool-services-package.deb
    ```

### 4. 从下载链接安装

1. 下载 DEB 包并安装：

    ```sh
    wget https://path-to-your-deb-package/tool-services-package.deb
    sudo dpkg -i tool-services-package.deb
    ```

## 使用方法

### 检查服务状态

直接运行可以检查所有服务的运行状态：

```sh
tool-services
```

### 启动服务

启动特定服务：

```sh
tool-services --start service_name
```

启动所有服务：

```sh
tool-services --start
```

### 停止服务

停止特定服务：

```sh
tool-services --stop service_name
```

停止所有服务：

```sh
tool-services --stop
```

### 重启服务

重启特定服务：

```sh
tool-services --restart service_name
```

重启所有服务：

```sh
tool-services --restart
```

### 参数说明

- `-y`：自动确认所有提示需要操作的服务。
- `-n`：自动取消所有提示需要操作的服务。
- `-h` 或 `-?`：显示帮助信息。

## 配置

### 服务列表文件

脚本会读取用户主目录下的 `.tool-services` 文件，该文件包含了需要管理的服务列表。如果该文件不存在，脚本将会自动创建一个空文件。

### 多语言支持

脚本会根据系统语言选择对应的语言文件。如果找不到相应的语言文件，将会使用默认的英文提示信息。

## 示例

检查服务状态，并在检测到服务异常时询问是否重启：

```sh
tool-services
```

自动重启所有异常服务：

```sh
tool-services -y
```

## 贡献

如果你有任何建议或发现了 bug，请提交 issue 或 pull request。

## 许可证

此项目基于 MIT 许可证开源。详细信息请参阅 [LICENSE](LICENSE) 文件。
