//
//  main.m
//  HelloXcode
//
//  Created by Jonas Steiner on 12/19/18.
//  Copyright © 2018 test. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
    [[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
    return NSApplicationMain(argc, argv);
}
