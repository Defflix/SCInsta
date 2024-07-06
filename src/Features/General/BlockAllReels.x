#import "../../InstagramHeaders.h"
#import "../../Manager.h"

// Block all Reels
%hook IGSundialFeedViewController
- (id)view {
  return [SCIManager blockAllReels] ? nil : %orig;
}
%end
