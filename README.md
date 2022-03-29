# PROTO files for a TTS text preprocessing service

These proto files define messages and services for a TTS text preprocessing pipeline.

The pipeline consists of text cleaning, with the possibility of an up front html-parsing and text extraction, text normalization,
spell correction, insertion of pause tags through phrasing, and grapheme-to-phoneme conversion (g2p).

In `generate_proto.sh` there is an example script for the generation of Python code for the proto files (`_pb2.py` and `_pb2_grpc.py`) but generation normally takes place in the project using the protos.

## Contributing

You can contribute to this project by forking it, creating a branch and opening a new
[pull request](https://github.com/grammatek/tts-frontend-proto/pulls).

## License

Copyright © 2021-2022 Grammatek ehf

License: [Apache License](LICENSE).

This software is developed under the auspices of the Icelandic Government 5-Year Language Technology Program, described
[here](https://www.stjornarradid.is/lisalib/getfile.aspx?itemid=56f6368e-54f0-11e7-941a-005056bc530c) and
[here](https://clarin.is/media/uploads/mlt-en.pdf) (English).