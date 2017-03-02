# CollectionViewHeaderFooter
CollectionView using header and footer causing assertion failure
Below is the log from the System Console
didFinishLaunchingWithOptions
2017-03-01 20:55:32.935 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - viewDidLoad
2017-03-01 20:55:32.935 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - numberOfItemsInSection
applicationDidBecomeActive
2017-03-01 20:55:32.943 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.014 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.015 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.016 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.017 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.018 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.019 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.019 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.020 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.021 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.022 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.023 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.024 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.025 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.026 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.028 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - cellForItemAt
2017-03-01 20:55:33.029 CollectionViewHeaderFooter[52332:5713230] Collection ViewHeaderFooter - viewForSupplementaryElementOfKind
2017-03-01 20:55:33.029 CollectionViewHeaderFooter[52332:5713230] In Collection ViewHeaderFooter for kind UICollectionElementKindSectionFooter
2017-03-01 20:55:33.030 CollectionViewHeaderFooter[52332:5713230] *** Assertion failure in -[UICollectionView _dequeueReusableViewOfKind:withIdentifier:forIndexPath:viewCategory:], /BuildRoot/Library/Caches/com.apple.xbs/Sources/UIKit_Sim/UIKit-3600.6.21/UICollectionView.m:4971
2017-03-01 20:55:33.035 CollectionViewHeaderFooter[52332:5713230] *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'could not dequeue a view of kind: UICollectionElementKindSectionFooter with identifier footer - must register a nib or a class for the identifier or connect a prototype cell in a storyboard'
*** First throw call stack:
(
	0   CoreFoundation                      0x000000010bbbed4b __exceptionPreprocess + 171
	1   libobjc.A.dylib                     0x0000000108ed121e objc_exception_throw + 48
	2   CoreFoundation                      0x000000010bbc2e42 +[NSException raise:format:arguments:] + 98
	3   Foundation                          0x0000000108a6666d -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:] + 195
	4   UIKit                               0x0000000109cf344c -[UICollectionView _dequeueReusableViewOfKind:withIdentifier:forIndexPath:viewCategory:] + 2176
	5   UIKit                               0x0000000109cf3a58 -[UICollectionView dequeueReusableSupplementaryViewOfKind:withReuseIdentifier:forIndexPath:] + 324
	6   CollectionViewHeaderFooter          0x00000001088ea858 _TFC26CollectionViewHeaderFooter26CollectionViewHeaderFooter14collectionViewfTCSo16UICollectionView33viewForSupplementaryElementOfKindSS2atV10Foundation9IndexPath_CSo24UICollectionReusableView + 696
	7   CollectionViewHeaderFooter          0x00000001088eae39 _TToFC26CollectionViewHeaderFooter26CollectionViewHeaderFooter14collectionViewfTCSo16UICollectionView33viewForSupplementaryElementOfKindSS2atV10Foundation9IndexPath_CSo24UICollectionReusableView + 137
	8   UIKit                               0x0000000109cdf444 -[UICollectionView _createPreparedSupplementaryViewForElementOfKind:atIndexPath:withLayoutAttributes:applyAttributes:] + 762
	9   UIKit                               0x0000000109ce3a84 -[UICollectionView _updateVisibleCellsNow:] + 4841
	10  UIKit                               0x0000000109ce9725 -[UICollectionView layoutSubviews] + 313
	11  UIKit                               0x0000000109465ab8 -[UIView(CALayerDelegate) layoutSublayersOfLayer:] + 1237
	12  QuartzCore                          0x000000010ea04bf8 -[CALayer layoutSublayers] + 146
	13  QuartzCore                          0x000000010e9f8440 _ZN2CA5Layer16layout_if_neededEPNS_11TransactionE + 366
	14  QuartzCore                          0x000000010e9f82be _ZN2CA5Layer28layout_and_display_if_neededEPNS_11TransactionE + 24
	15  QuartzCore                          0x000000010e986318 _ZN2CA7Context18commit_transactionEPNS_11TransactionE + 280
	16  QuartzCore                          0x000000010e9b33ff _ZN2CA11Transaction6commitEv + 475
	17  QuartzCore                          0x000000010e9b3d6f _ZN2CA11Transaction17observer_callbackEP19__CFRunLoopObservermPv + 113
	18  CoreFoundation                      0x000000010bb63267 __CFRUNLOOP_IS_CALLING_OUT_TO_AN_OBSERVER_CALLBACK_FUNCTION__ + 23
	19  CoreFoundation                      0x000000010bb631d7 __CFRunLoopDoObservers + 391
	20  CoreFoundation                      0x000000010bb478a6 CFRunLoopRunSpecific + 454
	21  UIKit                               0x000000010939aaea -[UIApplication _run] + 434
	22  UIKit                               0x00000001093a0c68 UIApplicationMain + 159
	23  CollectionViewHeaderFooter          0x00000001088ec1df main + 111
	24  libdyld.dylib                       0x000000010cb6e68d start + 1
	25  ???                                 0x0000000000000001 0x0 + 1
)
libc++abi.dylib: terminating with uncaught exception of type NSException
