@echo off

if not exist account mkdir account
if not exist api mkdir api
if not exist boss mkdir boss
if not exist friends mkdir friends
if not exist miiverse mkdir miiverse
if not exist grpc mkdir grpc

python -m grpc_tools.protoc ^
  --proto_path=grpc-protobufs/account ^
  --proto_path=grpc-protobufs/api ^
  --proto_path=grpc-protobufs/boss ^
  --proto_path=grpc-protobufs/friends ^
  --proto_path=grpc-protobufs/miiverse ^
  --python_out=grpc/account ^
  --grpc_python_out=grpc/account ^
  grpc-protobufs/account/*.proto

python -m grpc_tools.protoc ^
  --proto_path=grpc-protobufs/api ^
  --python_out=grpc/api ^
  --grpc_python_out=grpc/api ^
  grpc-protobufs/api/*.proto

python -m grpc_tools.protoc ^
  --proto_path=grpc-protobufs/account ^
  --proto_path=grpc-protobufs/api ^
  --proto_path=grpc-protobufs/boss ^
  --proto_path=grpc-protobufs/friends ^
  --proto_path=grpc-protobufs/miiverse ^
  --python_out=grpc/boss ^
  --grpc_python_out=grpc/boss ^
  grpc-protobufs/boss/*.proto

python -m grpc_tools.protoc ^
  --proto_path=grpc-protobufs/account ^
  --proto_path=grpc-protobufs/api ^
  --proto_path=grpc-protobufs/boss ^
  --proto_path=grpc-protobufs/friends ^
  --proto_path=grpc-protobufs/miiverse ^
  --python_out=grpc/friends ^
  --grpc_python_out=grpc/friends ^
  grpc-protobufs/friends/*.proto

python -m grpc_tools.protoc ^
  --proto_path=grpc-protobufs/account ^
  --proto_path=grpc-protobufs/api ^
  --proto_path=grpc-protobufs/boss ^
  --proto_path=grpc-protobufs/friends ^
  --proto_path=grpc-protobufs/miiverse ^
  --python_out=grpc/miiverse ^
  --grpc_python_out=grpc/miiverse ^
  grpc-protobufs/miiverse/*.proto

pause
