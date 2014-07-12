//
//  TLViewController.m
//  GetCurrentLocation
//
//  Created by Tilak_G on 03/05/14.

//

#import "TLViewController.h"

@interface TLViewController ()

@end

@implementation TLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor greenColor];
    locationManager = [[CLLocationManager alloc] init];
    [self CurrentLocationIdentifier]; // call this method
}

-(void)CurrentLocationIdentifier
{
    //---- For getting current gps location
    locationManager = [CLLocationManager new];
    locationManager.delegate = self;
//    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    //------
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError: %@", error);
    UIAlertView *errorAlert = [[UIAlertView alloc]
                               initWithTitle:@"Error" message:@"Failed to Get Your Location" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [errorAlert show];
}
//
//- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
//{
//    
//    
//    currentLocation = [locations objectAtIndex:0];
//    [locationManager stopUpdatingLocation];
//    CLGeocoder *geocoder = [[CLGeocoder alloc] init] ;
//    [geocoder reverseGeocodeLocation:currentLocation completionHandler:^(NSArray *placemarks, NSError *error)
//     {
//         if (!(error))
//         {
//             CLPlacemark *placemark = [placemarks objectAtIndex:0];
//             NSLog(@"\nCurrent Location Detected\n");
//             NSLog(@"placemark %@",placemark);
//             NSString *locatedAt = [[placemark.addressDictionary valueForKey:@"FormattedAddressLines"] componentsJoinedByString:@", "];
//             NSString *Address = [[NSString alloc]initWithString:locatedAt];
//             NSLog(@"%@",Address);
//             NSString *Area = [[NSString alloc]initWithString:placemark.locality];
//             NSString *Country = [[NSString alloc]initWithString:placemark.country];
//             NSString *CountryArea = [NSString stringWithFormat:@"%@, %@", Area,Country];
//             NSLog(@"%@",CountryArea);
//         }
//         else
//         {
//             NSLog(@"Geocode failed with error %@", error);
//             NSLog(@"\nCurrent Location Not Detected\n");
//             //return;
////             CountryArea = NULL;
//         }
//         /*---- For more results
//          placemark.region);
//          placemark.country);
//          placemark.locality);
//          placemark.name);
//          placemark.ocean);
//          placemark.postalCode);
//          placemark.subLocality);
//          placemark.location);
//          ------*/
//     }];
//}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"didUpdateToLocation: %@", newLocation);
    CLLocation *currentLocation = newLocation;
    
    if (currentLocation != nil) {
//        longitudeLabel.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.longitude];
//        latitudeLabel.text = [NSString stringWithFormat:@"%.8f", currentLocation.coordinate.latitude];
        
        NSLog(@"%.8f-%.8f",currentLocation.coordinate.longitude,currentLocation.coordinate.latitude);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
