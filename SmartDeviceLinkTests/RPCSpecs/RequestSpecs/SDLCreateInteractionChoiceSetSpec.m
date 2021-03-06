//
//  SDLCreateInteractionChoiceSetSpec.m
//  SmartDeviceLink


#import <Foundation/Foundation.h>

#import <Quick/Quick.h>
#import <Nimble/Nimble.h>

#import "SDLCreateInteractionChoiceSet.h"
#import "SDLChoice.h"
#import "SDLNames.h"

QuickSpecBegin(SDLCreateInteractionChoiceSetSpec)

SDLChoice* choice = [[SDLChoice alloc] init];

describe(@"Getter/Setter Tests", ^ {
    it(@"Should set and get correctly", ^ {
        SDLCreateInteractionChoiceSet* testRequest = [[SDLCreateInteractionChoiceSet alloc] init];
        
        testRequest.interactionChoiceSetID = @141414;
        testRequest.choiceSet = [@[choice] mutableCopy];
        
        expect(testRequest.interactionChoiceSetID).to(equal(@141414));
        expect(testRequest.choiceSet).to(equal([@[choice] mutableCopy]));
    });
    
    it(@"Should get correctly when initialized", ^ {
        NSMutableDictionary<NSString *, id> *dict = [@{SDLNameRequest:
                                                           @{SDLNameParameters:
                                                                 @{SDLNameInteractionChoiceSetId:@141414,
                                                                   SDLNameChoiceSet:[@[choice] mutableCopy]},
                                                             SDLNameOperationName:SDLNameCreateInteractionChoiceSet}} mutableCopy];
        SDLCreateInteractionChoiceSet* testRequest = [[SDLCreateInteractionChoiceSet alloc] initWithDictionary:dict];

        expect(testRequest.interactionChoiceSetID).to(equal(@141414));
        expect(testRequest.choiceSet).to(equal([@[choice] mutableCopy]));
    });
    
    it(@"Should return nil if not set", ^ {
        SDLCreateInteractionChoiceSet* testRequest = [[SDLCreateInteractionChoiceSet alloc] init];
        
        expect(testRequest.interactionChoiceSetID).to(beNil());
        expect(testRequest.choiceSet).to(beNil());
    });
});

QuickSpecEnd
