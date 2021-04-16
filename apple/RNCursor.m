#import "RNCursor.h"
#import <React/RCTLog.h>
#import <React/RCTUtils.h>

@implementation RNCursor

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setCursor: (NSString *) type) {
  @try {
    [[NSCursor valueForKey:[type stringByAppendingString:@"Cursor"]] performSelector:@selector(set)];
  }
  @catch (NSException *exception) {
    RCTLogWarn(@"Unrecognized cursor type %@. Expected one of arrow, iBeam, crosshair, closedHand, openHand, pointingHand, resizeLeft, resizeRight, resizeLeftRight, resizeUp, resizeDown, resizeUpDown, disappearingItem, iBeamCursorForVerticalLayout, operationNotAllowed, dragLink, dragCopy, or contextualMenu.", type);
  }
}

@end