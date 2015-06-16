//
//  NSError+QRZErrorDescriptions.h
//
//  Created by Ruslan Nikolaev on 12.11.14.
//
//

#import <Foundation/Foundation.h>

/*
	For more info you can check 
	https://developer.apple.com/Library/ios/documentation/Networking/Reference/CFNetworkErrors/
*/

@interface NSError (QRZErrorDescriptions)

-(NSString *) getErrorCodeDescriptionWithConnectionFlag: (BOOL*) reasonClient;

@end
