//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    return YES;
}

-(NSArray*)arrayBySortingArrayAscending:(NSArray *)returnArray{
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSArray *arrayBySortingArrayAscending = [returnArray sortedArrayUsingDescriptors:@[sortByNilAsc]];
    return arrayBySortingArrayAscending;
}
-(NSArray*)arrayBySortingArrayDescending:(NSArray *)returnArray{
    NSSortDescriptor *sortByNilAsc = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    NSSortDescriptor *sortByNameDesc = [sortByNilAsc reversedSortDescriptor];
    NSArray *arrayBySortingArrayDescending = [returnArray sortedArrayUsingDescriptors:@[sortByNameDesc]];
    return arrayBySortingArrayDescending;
}
-(NSArray*)arrayBySwappingFirstObjectWithLastObjectInArray:(NSArray *)returnArray{
    NSMutableArray *mReturnArray = [[NSMutableArray alloc] init];
    mReturnArray = [returnArray mutableCopy];
    NSString *firstObject = [returnArray firstObject];
    NSString *lastObject = [returnArray lastObject];
    [mReturnArray removeLastObject];
    [mReturnArray insertObject:lastObject atIndex:0];
    [mReturnArray removeObjectAtIndex:1];
    [mReturnArray addObject:firstObject];
    returnArray = mReturnArray;
    return returnArray;
}
-(NSArray*)arrayByReversingArray:(NSArray *)returnArray{
    NSArray *arrayByReversingArray = [[returnArray reverseObjectEnumerator] allObjects];
    return arrayByReversingArray;
}
-(NSString*)stringInBasicLeetFromString:(NSString *)returnString{
    NSDictionary *replacements = @{ @"a" : @"4",
                                    @"s" : @"5",
                                    @"i" : @"1",
                                    @"l" : @"1",
                                    @"e" : @"3",
                                    @"t" : @"7"};
    
    NSMutableString *string = returnString.mutableCopy;
    for(NSString *key in replacements){
        [string replaceOccurrencesOfString:key withString:replacements[key] options:0 range:NSMakeRange(0, string.length)];
}

    returnString = string;
    
    return returnString;
        
        //a" to "4",
       // "s" to "5",
       // "i" to "1",
       // "l" to "1",
       // "e" to "3", and
       //" "t" to "7".
    
}
-(NSArray*)splitArrayIntoNegativesAndPositives:(NSArray *)returnArray{
    NSMutableArray *mPositive= [[NSMutableArray alloc] init];
    NSMutableArray *mNegative = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < returnArray.count; i++){
        NSNumber *number = returnArray[i];
        if (number.integerValue < 0) {
            [mNegative addObject:returnArray[i]];
        }else{
            [mPositive addObject:returnArray[i]];
        }
    }
    NSArray *total = @[ mNegative,
  mPositive];
    return total;
}
-(NSArray*)namesOfHobbitsInDictionary:(NSDictionary*)hobbitNames{
    NSArray *namesOfHobbitsInDictionary = [hobbitNames allKeysForObject:@"hobbit"];
    return namesOfHobbitsInDictionary;
}
-(NSArray*)stringsBeginningWithAInArray:(NSArray *)returnArray{
    NSPredicate *beginsWithA = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] 'a'"];
    NSArray *aArray = [returnArray filteredArrayUsingPredicate:beginsWithA];
    return aArray;
}
-(NSInteger)sumOfIntegersInArray:(NSArray*)sumInteger{
    NSNumber * sum = [sumInteger valueForKeyPath:@"@sum.self"];
    NSInteger sumOfIntegersInArray = [sum integerValue];
    return sumOfIntegersInArray;
}
-(NSArray*)arrayByPluralizingStringsInArray:(NSArray *)returnArray{
    NSMutableArray *mReturnArray = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i< returnArray.count; i++){
        if([returnArray[i] hasSuffix:@"box"]){
            NSString *boxes = @"boxes";
            [mReturnArray addObject:boxes];
        }else if ([returnArray[i] hasSuffix:@"ox"]){
            NSString *oxen = @"oxen";
            [mReturnArray addObject:oxen];
        }else if ([returnArray[i] hasSuffix:@"oot"]){
            NSString *feet = @"feet";
            [mReturnArray addObject:feet];
        }else if ([returnArray[i] hasSuffix:@"us"]){
            NSString *radii = @"radii";
            [mReturnArray addObject:radii];
        }else if ([returnArray[i] hasSuffix:@"um"]){
            NSString *trivia = @"trivia";
            [mReturnArray addObject:trivia];
        }else {
            NSString *add = returnArray[i];
            NSString *addS = [add stringByAppendingString:@"s"];
            [mReturnArray addObject:addS];
        }
    }
    NSArray *final = mReturnArray;
    return final;
}
-(NSDictionary*)countsOfWordsInString:(NSString*)returnString{
    returnString = [returnString lowercaseString];
    returnString =[returnString stringByReplacingOccurrencesOfString:@"." withString:@""];
    returnString =[returnString stringByReplacingOccurrencesOfString:@"," withString:@""];
    returnString =[returnString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    returnString =[returnString stringByReplacingOccurrencesOfString:@";" withString:@""];
    NSMutableDictionary *mCountsOfWordsInStrings = [[NSMutableDictionary alloc] init];
    NSArray *seperateWords = [returnString componentsSeparatedByString:@" "];
    NSCountedSet *set = [[NSCountedSet alloc] initWithArray:seperateWords];
    for (id obj in set)
    {
        [mCountsOfWordsInStrings setObject:[NSNumber numberWithInt:[set countForObject:obj]] forKey:obj];
    }
    NSDictionary *countsOfWordsInString = mCountsOfWordsInStrings;
    return countsOfWordsInString;
}

-(NSDictionary*)songsGroupedByArtistFromArray:(NSArray*)returnArray{
    NSMutableDictionary *mSongsGroupedByArtistFromArray= [[NSMutableDictionary alloc] init];
    for (NSUInteger i = 0; i < returnArray.count; i++){
    NSArray *split = [returnArray[i] componentsSeparatedByString:@" - "];
    NSMutableArray *artist= [[NSMutableArray alloc] init];
    NSMutableArray *title= [[NSMutableArray alloc] init];
        for (NSUInteger i = 0; i < split.count; i++){
            if ((i % 2) == 0){
        [artist addObject:split[i]];
        }else{
        [title addObject:split[i]];
        }
        }
        for (NSUInteger i = 0; i < artist.count; i++){
            for (NSUInteger i = 0; i < title.count; i++){
                [mSongsGroupedByArtistFromArray setValue:title[i] forKey:artist[i]];
            }
        }
        
            }
    
    return mSongsGroupedByArtistFromArray;
    
    
}
@end

