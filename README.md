# Wi-Fi Config Generator

This shell script is a tool for easily generating wpa_supplicant configuration files. Simply input your SSID and password, and it will generate the appropriate configuration format.

## Prerequisites

- Bash shell
- `wpa_passphrase` command (usually installed as part of the `wpa_supplicant` package)

## Usage

1. Run the script in a terminal, passing the SSID as an argument:

```
$ ./wifi-config-generator.sh "Your SSID"
```

2. When prompted, enter the Wi-Fi password (input will not be displayed).

3. The generated configuration will be displayed in the standard output.

## Example

```
$ ./wifi-config-generator.sh "MyHomeWiFi"
Password:
network={
        ssid="MyHomeWiFi"
        psk=a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0u1v2w3x4y5z6
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](https://opensource.org/license/mit) for details.
