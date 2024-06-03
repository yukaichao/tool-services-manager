# Tool Services Manager

Tool Services Manager is a Bash script designed to manage system services. It can check, start, stop, and restart services, and provides multi-language support.

## Features

- **Service Status Check**: Detects the running status of all services and provides detailed log information.
- **Service Management**: Supports starting, stopping, and restarting services.
- **Auto-Restart**: Can optionally auto-restart services when an anomaly is detected.
- **Multi-Language Support**: Automatically selects the corresponding language file based on the system language, providing multilingual prompts.
- **Color Output**: Uses colors to differentiate between different prompts for easier recognition.

## Installation

### 1. Build and Install from Source

1. Clone the repository:

    ```sh
    git clone https://github.com/yourusername/tool-services-manager.git
    cd tool-services-manager
    ```

2. Build the package:

    ```sh
    sudo dpkg-deb --build tool-services-package
    ```

3. Install:

    ```sh
    sudo dpkg -i ./tool-services-package.deb
    ```

### 2. Install from Download Link

1. Download the DEB package and install:

    ```sh
    wget https://path-to-your-deb-package/tool-services-package.deb
    sudo dpkg -i tool-services-package.deb
    ```

## Usage

### Check Service Status

Run directly to check the running status of all services:

```sh
tool-services
```

### Start Service

Start a specific service:

```sh
tool-services --start service_name
```

Start all services:

```sh
tool-services --start
```

### Stop Service

Stop a specific service:

```sh
tool-services --stop service_name
```

Stop all services:

```sh
tool-services --stop
```

### Restart Service

Restart a specific service:

```sh
tool-services --restart service_name
```

Restart all services:

```sh
tool-services --restart
```

### Parameter Description

- `-y`: Automatically confirm all prompts for service operations.
- `-n`: Automatically cancel all prompts for service operations.
- `-h` or `-?`: Display help information.

## Configuration

### Service List File

The script reads a `.tool-services` file in the user's home directory, which contains the list of services to manage. If this file does not exist, the script will automatically create an empty file.

### Multi-Language Support

The script will select the corresponding language file based on the system language. If the appropriate language file is not found, it will use default English prompts.

## Examples

Check the status of services and ask whether to restart if an anomaly is detected:

```sh
tool-services
```

Automatically restart all abnormal services:

```sh
tool-services -y
```

## Contributing

If you have any suggestions or find any bugs, please submit an issue or pull request.

## License

This project is open-sourced under the MIT license. For more details, please refer to the [LICENSE](LICENSE) file.
