import Foundation
import PromiseKit

@objc(HiveDirectory)
public class HiveDirectoryHandle: NSObject, HiveResourceItem, HiveFileItem, HiveDirectoryItem {

    public var drive: HiveDriveHandle?
    //public var parentPathName: String?
    public var parentPath: String?
    public var createDateTime: String?
    public var lastModifiedDateTime: String?
    public var parentReference: Dictionary<AnyHashable, Any>?

    private let _directoryId: String?
    private var _lastInfo: HiveDirectoryInfo?
    internal let authHelper: AuthHelper
    private var _pathName: String?

    init(_ info: HiveDirectoryInfo, _ authHelper: AuthHelper) {
        self._lastInfo = info
        self.authHelper = authHelper
        self._directoryId = "TODO"
    }

    @objc
    public var handleId: String? {
        get {
            return self._directoryId;
        }
    }

    public typealias resourceType = HiveDirectoryInfo
    @objc
    public var lastInfo: resourceType? {
        get {
            return self._lastInfo
        }
        set (newInfo) {
            self._lastInfo = newInfo
        }
    }

    public func lastUpdatedInfo() -> Promise<resourceType>? {
        return lastUpdatedInfo(handleBy: HiveCallback<HiveDirectoryHandle.resourceType>())
    }

    public func lastUpdatedInfo(handleBy: HiveCallback<resourceType>) -> Promise<resourceType>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveDirectoryInfo>(error: error)
    }

    public func createDirectory(withPath: String) -> Promise<HiveDirectoryHandle>? {
        return createDirectory(withPath: withPath, handleBy: HiveCallback<HiveDirectoryHandle>())
    }

    public func createDirectory(withPath: String, handleBy: HiveCallback<HiveDirectoryHandle>) ->
        Promise<HiveDirectoryHandle>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveDirectoryHandle>(error: error)
    }

    public func directoryHandle(atPath: String) -> Promise<HiveDirectoryHandle>? {
        return directoryHandle(atPath: atPath, handleBy: HiveCallback<HiveDirectoryHandle>())
    }

    public func directoryHandle(atPath: String, handleBy: HiveCallback<HiveDirectoryHandle>) ->
        Promise<HiveDirectoryHandle>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveDirectoryHandle>(error: error)
    }

    public func createFile(withPath: String) -> Promise<HiveFileHandle>? {
        return createFile(withPath: withPath, handleBy: HiveCallback<HiveFileHandle>())
    }

    public func createFile(withPath: String, handleBy: HiveCallback<HiveFileHandle>) ->
        Promise<HiveFileHandle>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveFileHandle>(error: error)
    }

    public func fileHandle(atPath: String) -> Promise<HiveFileHandle>? {
        return fileHandle(atPath: atPath, handleBy: HiveCallback<HiveFileHandle>())
    }

    public func fileHandle(atPath: String, handleBy: HiveCallback<HiveFileHandle>) ->
        Promise<HiveFileHandle>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveFileHandle>(error: error)
    }
    // Get children.

    @objc
    public var pathName: String {
        get {
            return self._pathName!
        }
    }

    @objc
    public var parentPathName: String {
        get {
            // TODO_
            return self.pathName
        }
    }

    public func moveTo(newPath: String) -> Promise<HiveStatus>? {
        return moveTo(newPath: newPath, handleBy: HiveCallback<HiveStatus>())
    }

    public func moveTo(newPath: String, handleBy: HiveCallback<HiveStatus>) -> Promise<HiveStatus>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveStatus>(error: error)
    }

    public func copyTo(newPath: String) -> Promise<HiveStatus>? {
        return copyTo(newPath: newPath, handleBy: HiveCallback<HiveStatus>())
    }

    public func copyTo(newPath: String, handleBy: HiveCallback<HiveStatus>) -> Promise<HiveStatus>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveStatus>(error: error)
    }

    public func deleteItem() -> Promise<HiveStatus>? {
        return deleteItem(handleBy: HiveCallback<HiveStatus>())
    }

    public func deleteItem(handleBy: HiveCallback<HiveStatus>) -> Promise<HiveStatus>? {
        let error = HiveError.failue(des: "Dummy")
        return Promise<HiveStatus>(error: error)
    }

    public func close() {
        // TODO
    }
}
