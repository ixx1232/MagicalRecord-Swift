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

public enum MagicalRecordVersionTag: UInt {
  case MagicalRecordVersionTag2_2 = 220
  case MagicalRecordVersionTag2_3 = 230
  case MagicalRecordVersionTag3_0 = 300
}

public class MagicalRecord {
  
  public class func version() -> MagicalRecordVersionTag {
    return MagicalRecordVersionTag.MagicalRecordVersionTag2_2
  }

  public class func cleanup() {
    
  }
  
  public class func currentStack() -> String {

  }
  
  public class func setDefaultModelNamed(modelName: String) {

  }

  public class func setDefaultModelFromClass(modelClass: AnyClass) {
    
  }

  public class func defaultStoreName() -> String! {
    var defaultName: String? = NSBundle.mainBundle().objectForInfoDictionaryKey(kCFBundleNameKey as String) as? String
    if (defaultName == nil) {
      defaultName = kMagicalRecordDefaultStoreFileName
    }
    if (defaultName!.hasSuffix("sqlite")) {
      defaultName = (defaultName! as NSString).stringByAppendingPathExtension("sqlite")
    }
    return defaultName!
  }
}
