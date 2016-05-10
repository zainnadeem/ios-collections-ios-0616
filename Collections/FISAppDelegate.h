//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSArray*)arrayBySortingArrayAscending:(NSArray *)returnArray;
-(NSArray*)arrayBySortingArrayDescending:(NSArray *)returnArray;
-(NSArray*)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)returnArray;
-(NSArray*)arrayByReversingArray:(NSArray *)returnArray;
-(NSString*)stringInBasicLeetFromString:(NSString *)returnString;
-(NSArray*)splitArrayIntoNegativesAndPositives:(NSArray *)returnArray;
-(NSArray*)namesOfHobbitsInDictionary:(NSDictionary*)hobbitNames;
-(NSArray*)stringsBeginningWithAInArray:(NSArray *)returnArray;
-(NSInteger)sumOfIntegersInArray:(NSArray*)sumInteger;
-(NSArray*)arrayByPluralizingStringsInArray:(NSArray *)returnArray;
-(NSDictionary*)countsOfWordsInString:(NSString*)returnString;
-(NSDictionary*)songsGroupedByArtistFromArray:(NSArray*)returnArray;


@end
