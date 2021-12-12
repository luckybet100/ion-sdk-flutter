import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';

ClientChannelBase createChannel(String uri,
    {List<int>? certificates, String? authority, String? password}) {
  var _uri = Uri.parse(uri);
  return ClientChannel(_uri.host, // Your IP here or localhost
      port: _uri.port,
      options: ChannelOptions(
        credentials: _uri.scheme == "https"
            ? ChannelCredentials.secure(
                certificates: certificates,
                authority: authority,
                password: password)
            : ChannelCredentials.insecure(),
        idleTimeout: Duration(seconds: 1),
      ));
}
