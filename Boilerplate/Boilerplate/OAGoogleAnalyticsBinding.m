/*
 Copyright 2012 Aphid Mobile
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

#import "OAGoogleAnalyticsBinding.h"
#import "GANTracker.h"

@implementation OAGoogleAnalyticsBinding

- (void) startTrackerWithAccountID:(NSString*)accountID despatchPeriod:(int)period
{
	[[GANTracker sharedTracker] startTrackerWithAccountID:accountID dispatchPeriod:period delegate:nil];
}

- (void)stopTracker
{
	[[GANTracker sharedTracker] stopTracker];
}

- (BOOL)trackPageview:(NSString *)pageURL
{
	return [[GANTracker sharedTracker] trackPageview:pageURL withError:NULL];
}

- (BOOL)trackEvent:(NSString *)category
            action:(NSString *)action
             label:(NSString *)label
             value:(NSInteger)value
{
	return [[GANTracker sharedTracker] trackEvent:category action:action label:label value:value withError:NULL];
}

- (BOOL)setCustomVariableAtIndex:(NSUInteger)index
														name:(NSString *)name
													 value:(NSString *)value
													 scope:(GANCVScope)scope
{
	return [[GANTracker sharedTracker] setCustomVariableAtIndex:index name:name value:value scope:scope withError:NULL];
}

- (BOOL)setCustomVariableAtIndex:(NSUInteger)index
                            name:(NSString *)name
                           value:(NSString *)value
{
	return [[GANTracker sharedTracker] setCustomVariableAtIndex:index name:name value:value withError:NULL];
}

- (NSString *)getVisitorCustomVarAtIndex:(NSUInteger)index
{
	return [[GANTracker sharedTracker] getVisitorCustomVarAtIndex:index];
}

- (BOOL)addTransaction:(NSString *)orderID
            totalPrice:(double)totalPrice
             storeName:(NSString *)storeName
              totalTax:(double)totalTax
          shippingCost:(double)shippingCost
{
	return [[GANTracker sharedTracker] addTransaction:orderID totalPrice:totalPrice storeName:storeName totalTax:totalTax shippingCost:shippingCost withError:NULL];
}

- (BOOL)addItem:(NSString *)orderID
				itemSKU:(NSString *)itemSKU
			itemPrice:(double)itemPrice
			itemCount:(double)itemCount
			 itemName:(NSString *)itemName
	 itemCategory:(NSString *)itemCategory
{
	return [[GANTracker sharedTracker] addItem:orderID itemSKU:itemSKU itemPrice:itemPrice itemCount:itemCount itemName:itemName itemCategory:itemCategory withError:NULL];
}

- (BOOL)trackTransactions
{
	return [[GANTracker sharedTracker] trackTransactions:NULL];
}

- (BOOL)clearTransactions
{
	return [[GANTracker sharedTracker] clearTransactions:NULL];
}

- (BOOL)setReferrer:(NSString *)referrer
{
	return [[GANTracker sharedTracker] setReferrer:referrer withError:NULL];
}

- (BOOL)dispatch
{
	return [[GANTracker sharedTracker] dispatch];
}

- (BOOL)dispatchSynchronous:(NSTimeInterval)timeout
{
	return [[GANTracker sharedTracker] dispatchSynchronous:timeout];
}


- (void)bindSelectors:(OABindingMap *)bindingMap
{
	[bindingMap bindSelector:@selector(startTrackerWithAccountID:despatchPeriod:) 
                   forName:@"startTracker"];
  
	[bindingMap bindSelector:@selector(stopTracker) 
                   forName:@"stopTracker"];
  
	[bindingMap bindSelector:@selector(trackPageview:) 
                   forName:@"trackPageView"];
  
	[bindingMap bindSelector:@selector(trackEvent:action:label:value:) 
                   forName:@"trackEvent"];
  
	[bindingMap bindSelector:@selector(setCustomVariableAtIndex:name:value:scope:) 
                   forName:@"setCustomVariableForScope"];
  
	[bindingMap bindSelector:@selector(setCustomVariableAtIndex:name:value:) 
                   forName:@"setCustomVariable"];
  
	[bindingMap bindSelector:@selector(getVisitorCustomVarAtIndex:) 
                   forName:@"getVisitorCustomVar"];
  
	[bindingMap bindSelector:@selector(addTransaction:totalPrice:storeName:totalTax:shippingCost:) 
                   forName:@"addTransaction"];
  
	[bindingMap bindSelector:@selector(addItem:itemSKU:itemPrice:itemCount:itemName:itemCategory:) 
                   forName:@"addItem"];
  
	[bindingMap bindSelector:@selector(trackTransactions) 
                   forName:@"trackTransactions"];
  
	[bindingMap bindSelector:@selector(clearTransactions) 
                   forName:@"clearTransactions"];
  
	[bindingMap bindSelector:@selector(setReferrer:) 
                   forName:@"setReferrer"];
  
	[bindingMap bindSelector:@selector(dispatch) 
                   forName:@"dispatch"];
  
	[bindingMap bindSelector:@selector(dispatchSynchronous:) 
                   forName:@"dispatchSynchronous"];
}

@end
