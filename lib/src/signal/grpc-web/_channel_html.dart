import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_web.dart';

ClientChannelBase createChannel(String uri) {
  return GrpcWebClientChannel.xhr(Uri.parse(uri));
}
