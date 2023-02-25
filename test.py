from pymodbus.client import ModbusTcpClient


client = ModbusTcpClient('10.76.152.221', port=502)
client.connect()    
response = client.write_coil(0, True)
print(response)
client.read_coils(0, 1).bits


response = client.write_coil(0, False)


client.close()