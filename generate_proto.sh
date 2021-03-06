#!/bin/sh

# Generates _pb2.py and _pb2_grpc.py for messages and services
# Normally, generation is performed where the protos are going to be used, use this script for testing / as a template.

# If you already have a virtual environment, comment this out and activate your venv
python3 -m venv venv
source venv/bin/activate

GRPC_TOOLS_FOUND=`pip list | grep grpcio-tools`
if [ "$?" -ne 0 ]; then
	pip install grpcio-tools
fi

# clone the google apis
GOOGLEAPIS_DIR=googleapis/
if [ ! -d ${GOOGLEAPIS_DIR} ]; then
  git clone --depth 1 https://github.com/googleapis/googleapis ${GOOGLEAPIS_DIR}
fi

mkdir -p generated

# In a project where the protos are going to be used, typical parameters would be:
# -I./proto/
# --python_out=src/generated/
# --grpc_python_out=src/generated/
# tts-frontend-proto/services/preprocessing_service.proto
# tts-frontend-proto/messages/preprocessing_message.proto

python3 -m grpc_tools.protoc -I./googleapis -I. --python_out=generated/ \
        --grpc_python_out=generated/ services/preprocessing_service.proto
python3 -m grpc_tools.protoc -I./googleapis -I. --python_out=generated/ \
        --grpc_python_out=generated/ messages/preprocessing_message.proto

#python3 -m grpc_tools.protoc -I. --python_out=generated/ --grpc_python_out=generated/ services/preprocessing_service.proto
#python3 -m grpc_tools.protoc -I. --python_out=generated/ --grpc_python_out=generated/ messages/preprocessing_message.proto