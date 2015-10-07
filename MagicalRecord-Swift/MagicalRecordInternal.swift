//
//  MagicalRecordInternal.swift
//  MagicalRecord-Swift
//
//  Created by Jacky Wu on 10/6/15.
//  Copyright © 2015 Jacky Wu. All rights reserved.
//

import Foundation

//#if NS_BLOCKS_AVAILABLE
//  extern NSString * const kMagicalRecordCleanedUpNotification;
//  @class NSManagedObjectContext;
//  typedef void (^CoreDataBlock)(NSManagedObjectContext *context);
//#endif

enum MagicalRecordVersionTag: UInt {
  case MagicalRecordVersionTag2_2 = 220
  case MagicalRecordVersionTag2_3 = 230
  case MagicalRecordVersionTag3_0 = 300
}

class MagicalRecord {
  
  class func version() -> MagicalRecordVersionTag {
    return MagicalRecordVersionTag.MagicalRecordVersionTag2_2
  }

  class func cleanup() {
    
  }
  
  class func currentStack() -> String {
    
  }
  
  class func setDefaultModelNamed(modelName: String) {

  }

  class func setDefaultModelFromClass(modelClass: AnyClass) {
    
  }

  class func defaultStoreName() -> String! {
    let defaultName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey(kCFBundleNameKey as String) as? String
    if (defaultName == nil) {
      defaultName = kMagicalRecordDefaultStoreFileName
    }
    if (defaultName!.hasSuffix("sqlite")) {
      defaultName = (defaultName! as NSString).stringByAppendingPathExtension("sqlite")
    }
    return defaultName!
  }
}
