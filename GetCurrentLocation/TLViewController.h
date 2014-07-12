//
//  TLViewController.h
//  GetCurrentLocation
//
//  Created by Tilak_G on 03/05/14.

//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <CoreLocation/CoreLocation.h>

@interface TLViewController : UIViewController<CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
//    CLLocation *currentLocation;
}
@end
