import google.protobuf.json_format as pb_json
import processed_pb2

def main():
    token = processed_pb2.Token()
    token.name = 'orð'
    token.index = 1
    token.span_from = 1
    token.span_to = 4
    json_repr = pb_json.MessageToJson(token)
    print(json_repr)


if __name__ == '__main__':
    main()

