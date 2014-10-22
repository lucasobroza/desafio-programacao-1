# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf

octet_stream = MIME::Types["application/octet-stream"].first
octet_stream.extensions << "tab"
MIME::Types.index_extensions octet_stream

text_plain = MIME::Types["text/plain"].first
text_plain.extensions << "tab"
MIME::Types.index_extensions text_plain
