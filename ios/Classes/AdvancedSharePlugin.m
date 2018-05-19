#import "AdvancedSharePlugin.h"

@implementation AdvancedSharePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"github.com/mrtcndnlr/advanced_share"
            binaryMessenger:[registrar messenger]];
  AdvancedSharePlugin* instance = [[AdvancedSharePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"share" isEqualToString:call.method]) {
    
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
