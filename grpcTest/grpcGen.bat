protoc -I=. --cpp_out=. helloworld.proto
protoc -I=. --grpc_out=. --plugin=protoc-gen-grpc="D:\vcpkg\packages\grpc_x64-windows\tools\grpc\grpc_cpp_plugin.exe" helloworld.proto