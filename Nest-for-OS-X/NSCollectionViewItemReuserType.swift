//
//  NSCollectionViewItemReuserType.swift
//  Nest
//
//  Created by Manfred on 10/11/15.
//
//

import Cocoa

//MARK: - NSCollectionViewItemReusingType
@available(OSX 10.11, *)
public protocol NSCollectionViewItemReuserType: NSObjectProtocol {
    typealias ItemReuseIdentifier: RawRepresentable
}

@available(OSXApplicationExtension 10.11, *)
extension NSCollectionViewItemReuserType
    where ItemReuseIdentifier.RawValue == String
{
    /** For each item identifier that the collection view will use, register
    either a nib or class from which to instantiate an item, or provide a nib
    file or class whose name matches the identifier you plan to use.  If a nib
    is registered, it must contain exactly one top-level NSCollectionViewItem.
    If a class is registered instead of a nib, it will be instantiated via
    alloc/init.
    */
    @available(OSX 10.11, *)
    public func registerClass
        (itemClass: AnyClass?,
        forItemWithIdentifier identifier: ItemReuseIdentifier,
        toCollectionView collectionView: NSCollectionView)
    {
        collectionView.registerClass(itemClass,
            forItemWithIdentifier: identifier.rawValue)
    }
    
    @available(OSX 10.11, *)
    public func registerNib
        (nib: NSNib?,
        forItemWithIdentifier identifier: ItemReuseIdentifier,
        toCollectionView collectionView: NSCollectionView)
    {
        collectionView.registerNib(nib,
            forItemWithIdentifier: identifier.rawValue)
    }
    
    /** Call this method from your data source object when asked to provide a 
    new item for the collection view.  This method dequeues an existing item if 
    one is available or creates a new one based on the nib file or class you
    previously registered.  If you have not registered a nib file or class for
    the given identifier, CollectionView will try to load a nib file named 
    identifier.nib, or (failing that) find and instantiate an 
    NSCollectionViewItem subclass named "identifier".
    
    If you a new item must be created from a class, this method initializes the
    item by invoking its -init method.  For nib-based items, this method loads
    the item from the provided nib file.  If an existing item was available for
    reuse, this method invokes the item's -prepareForReuse method instead.
    */
    @available(OSX 10.11, *)
    public func makeItemWithIdentifier
        (identifier: ItemReuseIdentifier,
        forIndexPath indexPath: NSIndexPath,
        byCollectionView collectionView: NSCollectionView)
        -> NSCollectionViewItem
    {
        return collectionView.makeItemWithIdentifier(identifier.rawValue,
            forIndexPath: indexPath)
    }
    
}