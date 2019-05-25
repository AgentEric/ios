//
//  NCDatabase.swift
//  Nextcloud iOS
//
//  Created by Marino Faggiana on 06/05/17.
//  Copyright © 2017 Marino Faggiana. All rights reserved.
//
//  Author Marino Faggiana <marino.faggiana@nextcloud.com>
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import RealmSwift

class tableAccount: Object {

    @objc dynamic var account = ""
    @objc dynamic var active: Bool = false
    @objc dynamic var address = ""
    @objc dynamic var autoUpload: Bool = false
    @objc dynamic var autoUploadBackground: Bool = false
    @objc dynamic var autoUploadCreateSubfolder: Bool = false
    @objc dynamic var autoUploadFileName = ""
    @objc dynamic var autoUploadDirectory = ""
    @objc dynamic var autoUploadFull: Bool = false
    @objc dynamic var autoUploadImage: Bool = false
    @objc dynamic var autoUploadVideo: Bool = false
    @objc dynamic var autoUploadWWAnPhoto: Bool = false
    @objc dynamic var autoUploadWWAnVideo: Bool = false
    @objc dynamic var businessSize: String = ""
    @objc dynamic var businessType = ""
    @objc dynamic var dateSearchContentTypeImageVideo = NSDate.distantPast
    @objc dynamic var city = ""
    @objc dynamic var company = ""
    @objc dynamic var country = ""
    @objc dynamic var displayName = ""
    @objc dynamic var email = ""
    @objc dynamic var enabled: Bool = false
    @objc dynamic var loginFlow: Bool = false
    @objc dynamic var optimization = NSDate()
    @objc dynamic var password = ""
    @objc dynamic var phone = ""
    @objc dynamic var quota: Double = 0
    @objc dynamic var quotaFree: Double = 0
    @objc dynamic var quotaRelative: Double = 0
    @objc dynamic var quotaTotal: Double = 0
    @objc dynamic var quotaUsed: Double = 0
    @objc dynamic var role = ""
    @objc dynamic var startDirectoryPhotosTab = ""
    @objc dynamic var twitter = ""
    @objc dynamic var url = ""
    @objc dynamic var user = ""
    @objc dynamic var userID = ""
    @objc dynamic var webpage = ""
    @objc dynamic var zip = ""
    // HC
    @objc dynamic var hcIsTrial: Bool = false
    @objc dynamic var hcTrialExpired: Bool = false
    @objc dynamic var hcTrialRemainingSec: Double = 0
    @objc dynamic var hcTrialEndTime: NSDate? = nil
    @objc dynamic var hcAccountRemoveExpired: Bool = false
    @objc dynamic var hcAccountRemoveRemainingSec: Double = 0
    @objc dynamic var hcAccountRemoveTime: NSDate? = nil
    @objc dynamic var hcNextGroupExpirationGroup = ""
    @objc dynamic var hcNextGroupExpirationGroupExpired: Bool = false
    @objc dynamic var hcNextGroupExpirationExpiresTime: NSDate? = nil
    @objc dynamic var hcNextGroupExpirationExpires = ""
    
    override static func primaryKey() -> String {
        return "account"
    }
}

class tableActivity: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var idPrimaryKey = ""
    @objc dynamic var action = "Activity"
    @objc dynamic var date = NSDate()
    @objc dynamic var idActivity: Int = 0
    @objc dynamic var app = ""
    @objc dynamic var type = ""
    @objc dynamic var user = ""
    @objc dynamic var subject = ""
    @objc dynamic var subjectRich = ""
    let subjectRichItem = List<tableActivitySubjectRich>()
    @objc dynamic var icon = ""
    @objc dynamic var link = ""
    @objc dynamic var message = ""
    @objc dynamic var objectType = ""
    @objc dynamic var objectId: Int = 0
    @objc dynamic var objectName = ""
    @objc dynamic var note = ""
    @objc dynamic var selector = ""
    @objc dynamic var verbose: Bool = false
    
    override static func primaryKey() -> String {
        return "idPrimaryKey"
    }
}

class tableActivitySubjectRich: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var idActivity: Int = 0
    @objc dynamic var idPrimaryKey = ""
    @objc dynamic var id = ""
    @objc dynamic var key = ""
    @objc dynamic var link = ""
    @objc dynamic var name = ""
    @objc dynamic var path = ""
    @objc dynamic var type = ""
    
    override static func primaryKey() -> String {
        return "idPrimaryKey"
    }
}

class tableActivityPreview: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var idPrimaryKey = ""
    @objc dynamic var idActivity: Int = 0
    @objc dynamic var source = ""
    @objc dynamic var link = ""
    @objc dynamic var mimeType = ""
    @objc dynamic var fileId: Int = 0
    @objc dynamic var view = ""
    @objc dynamic var isMimeTypeIcon: Bool = false

    override static func primaryKey() -> String {
        return "idPrimaryKey"
    }
}

class tableCapabilities: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var themingBackground = ""
    @objc dynamic var themingBackgroundDefault: Bool = false
    @objc dynamic var themingBackgroundPlain: Bool = false
    @objc dynamic var themingColor = ""
    @objc dynamic var themingColorElement = ""
    @objc dynamic var themingColorText = ""
    @objc dynamic var themingLogo = ""
    @objc dynamic var themingName = ""
    @objc dynamic var themingSlogan = ""
    @objc dynamic var themingUrl = ""
    @objc dynamic var versionMajor: Int = 0
    @objc dynamic var versionMicro: Int = 0
    @objc dynamic var versionMinor: Int = 0
    @objc dynamic var versionString = ""
    @objc dynamic var endToEndEncryption: Bool = false
    @objc dynamic var endToEndEncryptionVersion = ""
    let richdocumentsMimetypes = List<String>()
    @objc dynamic var richdocumentsDirectEditing: Bool = false
    // FILES SHARING
    @objc dynamic var isFilesSharingAPIEnabled: Bool = false
    @objc dynamic var filesSharingDefaulPermissions: Int = 0
    @objc dynamic var isFilesSharingGroupSharing: Bool = false
    @objc dynamic var isFilesSharingReSharing: Bool = false
    @objc dynamic var isFilesSharingPublicShareLinkEnabled: Bool = false
    @objc dynamic var isFilesSharingAllowPublicUploadsEnabled: Bool = false
    @objc dynamic var isFilesSharingAllowPublicUserSendMail: Bool = false
    @objc dynamic var isFilesSharingAllowPublicUploadFilesDrop: Bool = false
    @objc dynamic var isFilesSharingAllowPublicMultipleLinks: Bool = false
    @objc dynamic var isFilesSharingPublicExpireDateByDefaultEnabled: Bool = false
    @objc dynamic var isFilesSharingPublicExpireDateEnforceEnabled: Bool = false
    @objc dynamic var filesSharingPublicExpireDateDays : Int = 0
    @objc dynamic var isFilesSharingPublicPasswordEnforced: Bool = false
    @objc dynamic var isFilesSharingAllowUserSendMail: Bool = false
    @objc dynamic var isFilesSharingUserExpireDate: Bool = false
    @objc dynamic var isFilesSharingGroupEnabled: Bool = false
    @objc dynamic var isFilesSharingGroupExpireDate: Bool = false
    @objc dynamic var isFilesSharingFederationAllowUserSendShares: Bool = false
    @objc dynamic var isFilesSharingFederationAllowUserReceiveShares: Bool = false
    @objc dynamic var isFilesSharingFederationExpireDate: Bool = false
    @objc dynamic var isFileSharingShareByMailEnabled: Bool = false
    @objc dynamic var isFileSharingShareByMailPassword: Bool = false
    @objc dynamic var isFileSharingShareByMailUploadFilesDrop: Bool = false
    // HC
    @objc dynamic var isHandwerkcloudEnabled: Bool = false
    @objc dynamic var HCShopUrl = ""
    // Imagemeter
    @objc dynamic var isImagemeterEnabled: Bool = false
}

class tableCertificates: Object {
    
    @objc dynamic var certificateLocation = ""
}

class tableDirectory: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var dateReadDirectory: NSDate? = nil
    @objc dynamic var directoryID = ""
    @objc dynamic var e2eEncrypted: Bool = false
    @objc dynamic var etag = ""
    @objc dynamic var favorite: Bool = false
    @objc dynamic var fileID = ""
    @objc dynamic var lock: Bool = false
    @objc dynamic var offline: Bool = false
    @objc dynamic var permissions = ""
    @objc dynamic var serverUrl = ""
    
    override static func primaryKey() -> String {
        return "directoryID"
    }
}

class tableE2eEncryption: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var authenticationTag = ""
    @objc dynamic var fileName = ""
    @objc dynamic var fileNameIdentifier = ""
    @objc dynamic var fileNamePath = ""
    @objc dynamic var key = ""
    @objc dynamic var initializationVector = ""
    @objc dynamic var metadataKey = ""
    @objc dynamic var metadataKeyIndex: Int = 0
    @objc dynamic var mimeType = ""
    @objc dynamic var serverUrl = ""
    @objc dynamic var version: Int = 1
    
    override static func primaryKey() -> String {
        return "fileNamePath"
    }
}

class tableE2eEncryptionLock: Object {

    @objc dynamic var account = ""
    @objc dynamic var date = NSDate()
    @objc dynamic var fileID = ""
    @objc dynamic var serverUrl = ""
    @objc dynamic var token = ""
    
    override static func primaryKey() -> String {
        return "fileID"
    }
}

class tableExternalSites: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var icon = ""
    @objc dynamic var idExternalSite: Int = 0
    @objc dynamic var lang = ""
    @objc dynamic var name = ""
    @objc dynamic var type = ""
    @objc dynamic var url = ""
}

class tableGPS: Object {
    
    @objc dynamic var latitude = ""
    @objc dynamic var location = ""
    @objc dynamic var longitude = ""
    @objc dynamic var placemarkAdministrativeArea = ""
    @objc dynamic var placemarkCountry = ""
    @objc dynamic var placemarkLocality = ""
    @objc dynamic var placemarkPostalCode = ""
    @objc dynamic var placemarkThoroughfare = ""
}

class tableLocalFile: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var date = NSDate()
    @objc dynamic var etag = ""
    @objc dynamic var exifDate = NSDate()
    @objc dynamic var exifLatitude = ""
    @objc dynamic var exifLongitude = ""
    @objc dynamic var favorite: Bool = false
    @objc dynamic var fileID = ""
    @objc dynamic var fileName = ""
    @objc dynamic var offline: Bool = false
    @objc dynamic var size: Double = 0
    
    override static func primaryKey() -> String {
        return "fileID"
    }
}

class tableMetadata: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var assetLocalIdentifier = ""
    @objc dynamic var date = NSDate()
    @objc dynamic var directory: Bool = false
    @objc dynamic var e2eEncrypted: Bool = false
    @objc dynamic var etag = ""
    @objc dynamic var favorite: Bool = false
    @objc dynamic var fileID = ""
    @objc dynamic var fileName = ""
    @objc dynamic var fileNameView = ""
    @objc dynamic var hasPreview: Int = -1
    @objc dynamic var iconName = ""
    @objc dynamic var permissions = ""
    @objc dynamic var serverUrl = ""
    @objc dynamic var session = ""
    @objc dynamic var sessionError = ""
    @objc dynamic var sessionSelector = ""
    @objc dynamic var sessionTaskIdentifier: Int = 0
    @objc dynamic var size: Double = 0
    @objc dynamic var status: Int = 0
    @objc dynamic var typeFile = ""
    @objc dynamic var url = ""

    override static func primaryKey() -> String {
        return "fileID"
    }
}

class tableMedia: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var assetLocalIdentifier = ""
    @objc dynamic var date = NSDate()
    @objc dynamic var directory: Bool = false
    @objc dynamic var e2eEncrypted: Bool = false
    @objc dynamic var etag = ""
    @objc dynamic var favorite: Bool = false
    @objc dynamic var fileID = ""
    @objc dynamic var fileName = ""
    @objc dynamic var fileNameView = ""
    @objc dynamic var hasPreview: Int = -1
    @objc dynamic var iconName = ""
    @objc dynamic var permissions = ""
    @objc dynamic var serverUrl = ""
    @objc dynamic var session = ""
    @objc dynamic var sessionError = ""
    @objc dynamic var sessionSelector = ""
    @objc dynamic var sessionTaskIdentifier: Int = 0
    @objc dynamic var size: Double = 0
    @objc dynamic var status: Int = 0
    @objc dynamic var typeFile = ""
    @objc dynamic var url = ""

    override static func primaryKey() -> String {
        return "fileID"
    }
}

class tablePhotoLibrary: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var assetLocalIdentifier = ""
    @objc dynamic var creationDate: NSDate? = nil
    @objc dynamic var idAsset = ""
    @objc dynamic var modificationDate: NSDate? = nil
    @objc dynamic var mediaType: Int = 0

    override static func primaryKey() -> String {
        return "idAsset"
    }
}

class tableShare: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var fileName = ""
    @objc dynamic var serverUrl = ""
    @objc dynamic var shareLink = ""
    @objc dynamic var shareUserAndGroup = ""
}

class tableTag: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var fileID = ""
    @objc dynamic var tagIOS: Data? = nil
    
    override static func primaryKey() -> String {
        return "fileID"
    }
}

class tableTrash: Object {
    
    @objc dynamic var account = ""
    @objc dynamic var date = NSDate()
    @objc dynamic var directory: Bool = false
    @objc dynamic var fileID = ""
    @objc dynamic var fileName = ""
    @objc dynamic var filePath = ""
    @objc dynamic var hasPreview: Int = -1
    @objc dynamic var iconName = ""
    @objc dynamic var size: Double = 0
    @objc dynamic var typeFile = ""
    @objc dynamic var trashbinFileName = ""
    @objc dynamic var trashbinOriginalLocation = ""
    @objc dynamic var trashbinDeletionTime = NSDate()

    override static func primaryKey() -> String {
        return "fileID"
    }
}
