from pymodbus.client import ModbusTcpClient


def main():
    client = ModbusTcpClient('10.76.152.221', port=502)
    client.connect()
    if client.is_socket_open():
        print("Connected to PLC")
        while True:
            print("1. Start motor\n"
                  "2. Stop motor\n"
                  "3. Set forward direction\n"
                  "4. Set reverse direction\n"
                  "5. Set speed\n")
            CMD = input("Select command to send to PLC: ")
            match CMD:
                case '1':
                    response = client.write_register(0, True)
                case '2':
                    response = client.write_register(0, False)
                case '3':
                    response = client.write_register(1, True)
                case '4':
                    response = client.write_register(1, False)
                case '5':
                    print("1. Low speed\n"
                          "2. Medium speed\n"
                          "3. High speed\n")
                    speed = input("Select speed: ")
                    match speed:
                        case '1':
                            response = client.write_register(2, 0)
                        case '2':
                            response = client.write_register(2, 1)
                        case '3':
                            response = client.write_register(2, 2)
            print(response)
    else:
        print("Connection to PLC failed")

if __name__ == "__main__":
    main()