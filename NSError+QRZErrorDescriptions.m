//
//  NSError+QRZErrorDescriptions.m
//
//  Created by Ruslan Nikolaev on 12.11.14.
//
//

#import "NSError+QRZErrorDescriptions.h"

@implementation NSError (QRZrrorDescriptions)


-(NSString *) getErrorCodeDescriptionWithConnectionFlag: (BOOL*) reasonClient
{
    NSString *message;
    
    switch (self.code) {
        case NSURLErrorUnknown:
            message = @"An unknown error occurred";
            break;
        case NSURLErrorCancelled:
            message = @"The connection was cancelled";
            break;
        case NSURLErrorBadURL:
            message = @"The connection failed due to a malformed URL";
            break;
        case NSURLErrorTimedOut:
            message = @"The connection timed out";
            *reasonClient = YES;
            break;
        case NSURLErrorUnsupportedURL:
            message = @"The connection failed due to an unsupported URL scheme";
            break;
        case NSURLErrorCannotFindHost:
            message = @"The connection failed because the host could not be found";
            break;
        case NSURLErrorCannotConnectToHost:
            message = @"The connection failed because a connection cannot be made to the host";
            break;
        case NSURLErrorNetworkConnectionLost:
            message = @"The connection failed because the network connection was lost";
            *reasonClient = YES;
            break;
        case NSURLErrorDNSLookupFailed:
            message = @"The connection failed because the DNS lookup failed";
            *reasonClient = YES;
            break;
        case NSURLErrorHTTPTooManyRedirects:
            message = @"The HTTP connection failed due to too many redirects";
            *reasonClient = YES;
            break;
        case NSURLErrorResourceUnavailable:
            message = @"The connection’s resource is unavailable";
            break;
        case NSURLErrorNotConnectedToInternet:
            message = @"The connection failed because the device is not connected to the internet";
            *reasonClient = YES;
            break;
        case NSURLErrorRedirectToNonExistentLocation:
            message = @"The connection was redirected to a nonexistent location";
            break;
        case NSURLErrorBadServerResponse:
            message = @"The connection received an invalid server response";
            break;
        case NSURLErrorUserCancelledAuthentication:
            message = @"The connection failed because the user cancelled required authentication";
            break;
        case NSURLErrorUserAuthenticationRequired:
            message = @"The connection failed because authentication is required";
            break;
        case NSURLErrorZeroByteResource:
            message = @"The resource retrieved by the connection is zero bytes";
            break;
        case NSURLErrorCannotDecodeRawData:
            message = @"The connection cannot decode data encoded with a known content encoding";
            break;
        case NSURLErrorCannotDecodeContentData:
            message = @"The connection cannot decode data encoded with an unknown content encoding";
            break;
        case NSURLErrorCannotParseResponse:
            message = @"The connection cannot parse the server’s response";
            break;
        case NSURLErrorFileDoesNotExist:
            message = @"The file operation failed because the file does not exist";
            break;
        case NSURLErrorFileIsDirectory:
            message = @"The file operation failed because the file is a directory";
            break;
        case NSURLErrorNoPermissionsToReadFile:
            message = @"The file operation failed because it does not have permission to read the file";
            break;
        case NSURLErrorDataLengthExceedsMaximum:
            message = @"The file operation failed because the file is too large";
            break;
        //SSL errors
        case NSURLErrorSecureConnectionFailed:
            message = @"The secure connection failed for an unknown reason";
            break;
        case NSURLErrorServerCertificateHasBadDate:
            message = @"The secure connection failed because the server’s certificate has an invalid date";
            break;
        case NSURLErrorServerCertificateUntrusted:
            message = @"The secure connection failed because the server’s certificate is not trusted";
            break;
        case NSURLErrorServerCertificateHasUnknownRoot:
            message = @"The secure connection failed because the server’s certificate has an unknown root";
            break;
        case NSURLErrorServerCertificateNotYetValid:
            message = @"The secure connection failed because the server’s certificate is not yet valid";
            break;
        case NSURLErrorClientCertificateRejected:
            message = @"The secure connection failed because the client’s certificate was rejected";
            break;
        case NSURLErrorClientCertificateRequired:
            message = @"The secure connection failed because the server requires a client certificate";
            break;
        case NSURLErrorCannotLoadFromNetwork:
            message = @"The connection failed because it is being required to return a cached resource, but one is not available";
            break;
        // Download and file I/O errors
        case NSURLErrorCannotCreateFile:
            message = @"The file cannot be created";
            break;
        case NSURLErrorCannotOpenFile:
            message = @"The file cannot be opened";
            break;
        case NSURLErrorCannotCloseFile:
            message = @"The file cannot be closed";
            break;
        case NSURLErrorCannotWriteToFile:
            message = @"The file cannot be written";
            break;
        case NSURLErrorCannotRemoveFile:
            message = @"The file cannot be removed";
            break;
        case NSURLErrorCannotMoveFile:
            message = @"The file cannot be moved";
            break;
        case NSURLErrorDownloadDecodingFailedMidStream:
            message = @"The download failed because decoding of the downloaded data failed mid-stream";
            break;
        case NSURLErrorDownloadDecodingFailedToComplete:
            message = @"The download failed because decoding of the downloaded data failed to complete";
            break;
        // Other errors
        case NSURLErrorInternationalRoamingOff:
            message = @"The connection failed because international roaming is disabled on the device";
            *reasonClient = YES;
            break;
        case NSURLErrorCallIsActive:
            message = @"The connection failed because a call is active";
            break;
        case NSURLErrorDataNotAllowed:
            message = @"The connection failed because data use is currently not allowed on the device";
            *reasonClient = YES;
            break;
        case NSURLErrorRequestBodyStreamExhausted:
            message = @"The connection failed because its request’s body stream was exhausted";
            break;
        default:
            
            message = self.localizedDescription;
            break;
    }
    
    return message;
}


@end
