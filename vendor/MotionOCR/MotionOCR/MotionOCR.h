//
//  MotionOCR.h
//  MotionOCR
//
//  Created by Fernando Espinosa on 05/01/13.
//  Copyright (c) 2013 com.ferdev. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

namespace tesseract {
    class TessBaseAPI;
}

@interface MotionOCR : NSObject
{
    tesseract::TessBaseAPI *tesseract;
    uint32_t *pixels;
}

- (NSString *)scan:(id)image;
@end
