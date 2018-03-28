
module AWS.Snowball.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
newtype Address = Address 
  { "AddressId" :: NullOrUndefined (AddressId)
  , "Name" :: NullOrUndefined (String)
  , "Company" :: NullOrUndefined (String)
  , "Street1" :: NullOrUndefined (String)
  , "Street2" :: NullOrUndefined (String)
  , "Street3" :: NullOrUndefined (String)
  , "City" :: NullOrUndefined (String)
  , "StateOrProvince" :: NullOrUndefined (String)
  , "PrefectureOrDistrict" :: NullOrUndefined (String)
  , "Landmark" :: NullOrUndefined (String)
  , "Country" :: NullOrUndefined (String)
  , "PostalCode" :: NullOrUndefined (String)
  , "PhoneNumber" :: NullOrUndefined (String)
  , "IsRestricted" :: NullOrUndefined (Boolean)
  }
derive instance newtypeAddress :: Newtype Address _
derive instance repGenericAddress :: Generic Address _
instance showAddress :: Show Address where show = genericShow
instance decodeAddress :: Decode Address where decode = genericDecode options
instance encodeAddress :: Encode Address where encode = genericEncode options

-- | Constructs Address from required parameters
newAddress :: Address
newAddress  = Address { "AddressId": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "Company": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "IsRestricted": (NullOrUndefined Nothing), "Landmark": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "PostalCode": (NullOrUndefined Nothing), "PrefectureOrDistrict": (NullOrUndefined Nothing), "StateOrProvince": (NullOrUndefined Nothing), "Street1": (NullOrUndefined Nothing), "Street2": (NullOrUndefined Nothing), "Street3": (NullOrUndefined Nothing) }

-- | Constructs Address's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddress' :: ( { "AddressId" :: NullOrUndefined (AddressId) , "Name" :: NullOrUndefined (String) , "Company" :: NullOrUndefined (String) , "Street1" :: NullOrUndefined (String) , "Street2" :: NullOrUndefined (String) , "Street3" :: NullOrUndefined (String) , "City" :: NullOrUndefined (String) , "StateOrProvince" :: NullOrUndefined (String) , "PrefectureOrDistrict" :: NullOrUndefined (String) , "Landmark" :: NullOrUndefined (String) , "Country" :: NullOrUndefined (String) , "PostalCode" :: NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined (String) , "IsRestricted" :: NullOrUndefined (Boolean) } -> {"AddressId" :: NullOrUndefined (AddressId) , "Name" :: NullOrUndefined (String) , "Company" :: NullOrUndefined (String) , "Street1" :: NullOrUndefined (String) , "Street2" :: NullOrUndefined (String) , "Street3" :: NullOrUndefined (String) , "City" :: NullOrUndefined (String) , "StateOrProvince" :: NullOrUndefined (String) , "PrefectureOrDistrict" :: NullOrUndefined (String) , "Landmark" :: NullOrUndefined (String) , "Country" :: NullOrUndefined (String) , "PostalCode" :: NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined (String) , "IsRestricted" :: NullOrUndefined (Boolean) } ) -> Address
newAddress'  customize = (Address <<< customize) { "AddressId": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "Company": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "IsRestricted": (NullOrUndefined Nothing), "Landmark": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "PostalCode": (NullOrUndefined Nothing), "PrefectureOrDistrict": (NullOrUndefined Nothing), "StateOrProvince": (NullOrUndefined Nothing), "Street1": (NullOrUndefined Nothing), "Street2": (NullOrUndefined Nothing), "Street3": (NullOrUndefined Nothing) }



newtype AddressId = AddressId String
derive instance newtypeAddressId :: Newtype AddressId _
derive instance repGenericAddressId :: Generic AddressId _
instance showAddressId :: Show AddressId where show = genericShow
instance decodeAddressId :: Decode AddressId where decode = genericDecode options
instance encodeAddressId :: Encode AddressId where encode = genericEncode options



newtype AddressList = AddressList (Array Address)
derive instance newtypeAddressList :: Newtype AddressList _
derive instance repGenericAddressList :: Generic AddressList _
instance showAddressList :: Show AddressList where show = genericShow
instance decodeAddressList :: Decode AddressList where decode = genericDecode options
instance encodeAddressList :: Encode AddressList where encode = genericEncode options



newtype CancelClusterRequest = CancelClusterRequest 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeCancelClusterRequest :: Newtype CancelClusterRequest _
derive instance repGenericCancelClusterRequest :: Generic CancelClusterRequest _
instance showCancelClusterRequest :: Show CancelClusterRequest where show = genericShow
instance decodeCancelClusterRequest :: Decode CancelClusterRequest where decode = genericDecode options
instance encodeCancelClusterRequest :: Encode CancelClusterRequest where encode = genericEncode options

-- | Constructs CancelClusterRequest from required parameters
newCancelClusterRequest :: ClusterId -> CancelClusterRequest
newCancelClusterRequest _ClusterId = CancelClusterRequest { "ClusterId": _ClusterId }

-- | Constructs CancelClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> CancelClusterRequest
newCancelClusterRequest' _ClusterId customize = (CancelClusterRequest <<< customize) { "ClusterId": _ClusterId }



newtype CancelClusterResult = CancelClusterResult Types.NoArguments
derive instance newtypeCancelClusterResult :: Newtype CancelClusterResult _
derive instance repGenericCancelClusterResult :: Generic CancelClusterResult _
instance showCancelClusterResult :: Show CancelClusterResult where show = genericShow
instance decodeCancelClusterResult :: Decode CancelClusterResult where decode = genericDecode options
instance encodeCancelClusterResult :: Encode CancelClusterResult where encode = genericEncode options



newtype CancelJobRequest = CancelJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where decode = genericDecode options
instance encodeCancelJobRequest :: Encode CancelJobRequest where encode = genericEncode options

-- | Constructs CancelJobRequest from required parameters
newCancelJobRequest :: JobId -> CancelJobRequest
newCancelJobRequest _JobId = CancelJobRequest { "JobId": _JobId }

-- | Constructs CancelJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelJobRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> CancelJobRequest
newCancelJobRequest' _JobId customize = (CancelJobRequest <<< customize) { "JobId": _JobId }



newtype CancelJobResult = CancelJobResult Types.NoArguments
derive instance newtypeCancelJobResult :: Newtype CancelJobResult _
derive instance repGenericCancelJobResult :: Generic CancelJobResult _
instance showCancelJobResult :: Show CancelJobResult where show = genericShow
instance decodeCancelJobResult :: Decode CancelJobResult where decode = genericDecode options
instance encodeCancelJobResult :: Encode CancelJobResult where encode = genericEncode options



newtype ClusterId = ClusterId String
derive instance newtypeClusterId :: Newtype ClusterId _
derive instance repGenericClusterId :: Generic ClusterId _
instance showClusterId :: Show ClusterId where show = genericShow
instance decodeClusterId :: Decode ClusterId where decode = genericDecode options
instance encodeClusterId :: Encode ClusterId where encode = genericEncode options



-- | <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
newtype ClusterLimitExceededException = ClusterLimitExceededException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeClusterLimitExceededException :: Newtype ClusterLimitExceededException _
derive instance repGenericClusterLimitExceededException :: Generic ClusterLimitExceededException _
instance showClusterLimitExceededException :: Show ClusterLimitExceededException where show = genericShow
instance decodeClusterLimitExceededException :: Decode ClusterLimitExceededException where decode = genericDecode options
instance encodeClusterLimitExceededException :: Encode ClusterLimitExceededException where encode = genericEncode options

-- | Constructs ClusterLimitExceededException from required parameters
newClusterLimitExceededException :: ClusterLimitExceededException
newClusterLimitExceededException  = ClusterLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ClusterLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterLimitExceededException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> ClusterLimitExceededException
newClusterLimitExceededException'  customize = (ClusterLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
newtype ClusterListEntry = ClusterListEntry 
  { "ClusterId" :: NullOrUndefined (String)
  , "ClusterState" :: NullOrUndefined (ClusterState)
  , "CreationDate" :: NullOrUndefined (Types.Timestamp)
  , "Description" :: NullOrUndefined (String)
  }
derive instance newtypeClusterListEntry :: Newtype ClusterListEntry _
derive instance repGenericClusterListEntry :: Generic ClusterListEntry _
instance showClusterListEntry :: Show ClusterListEntry where show = genericShow
instance decodeClusterListEntry :: Decode ClusterListEntry where decode = genericDecode options
instance encodeClusterListEntry :: Encode ClusterListEntry where encode = genericEncode options

-- | Constructs ClusterListEntry from required parameters
newClusterListEntry :: ClusterListEntry
newClusterListEntry  = ClusterListEntry { "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs ClusterListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterListEntry' :: ( { "ClusterId" :: NullOrUndefined (String) , "ClusterState" :: NullOrUndefined (ClusterState) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) } -> {"ClusterId" :: NullOrUndefined (String) , "ClusterState" :: NullOrUndefined (ClusterState) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) } ) -> ClusterListEntry
newClusterListEntry'  customize = (ClusterListEntry <<< customize) { "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype ClusterListEntryList = ClusterListEntryList (Array ClusterListEntry)
derive instance newtypeClusterListEntryList :: Newtype ClusterListEntryList _
derive instance repGenericClusterListEntryList :: Generic ClusterListEntryList _
instance showClusterListEntryList :: Show ClusterListEntryList where show = genericShow
instance decodeClusterListEntryList :: Decode ClusterListEntryList where decode = genericDecode options
instance encodeClusterListEntryList :: Encode ClusterListEntryList where encode = genericEncode options



-- | <p>Contains metadata about a specific cluster.</p>
newtype ClusterMetadata = ClusterMetadata 
  { "ClusterId" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (String)
  , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "ClusterState" :: NullOrUndefined (ClusterState)
  , "JobType" :: NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined (Types.Timestamp)
  , "Resources" :: NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeClusterMetadata :: Newtype ClusterMetadata _
derive instance repGenericClusterMetadata :: Generic ClusterMetadata _
instance showClusterMetadata :: Show ClusterMetadata where show = genericShow
instance decodeClusterMetadata :: Decode ClusterMetadata where decode = genericDecode options
instance encodeClusterMetadata :: Encode ClusterMetadata where encode = genericEncode options

-- | Constructs ClusterMetadata from required parameters
newClusterMetadata :: ClusterMetadata
newClusterMetadata  = ClusterMetadata { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs ClusterMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterMetadata' :: ( { "ClusterId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "ClusterState" :: NullOrUndefined (ClusterState) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"ClusterId" :: NullOrUndefined (String) , "Description" :: NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "ClusterState" :: NullOrUndefined (ClusterState) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> ClusterMetadata
newClusterMetadata'  customize = (ClusterMetadata <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype ClusterState = ClusterState String
derive instance newtypeClusterState :: Newtype ClusterState _
derive instance repGenericClusterState :: Generic ClusterState _
instance showClusterState :: Show ClusterState where show = genericShow
instance decodeClusterState :: Decode ClusterState where decode = genericDecode options
instance encodeClusterState :: Encode ClusterState where encode = genericEncode options



newtype CreateAddressRequest = CreateAddressRequest 
  { "Address" :: (Address)
  }
derive instance newtypeCreateAddressRequest :: Newtype CreateAddressRequest _
derive instance repGenericCreateAddressRequest :: Generic CreateAddressRequest _
instance showCreateAddressRequest :: Show CreateAddressRequest where show = genericShow
instance decodeCreateAddressRequest :: Decode CreateAddressRequest where decode = genericDecode options
instance encodeCreateAddressRequest :: Encode CreateAddressRequest where encode = genericEncode options

-- | Constructs CreateAddressRequest from required parameters
newCreateAddressRequest :: Address -> CreateAddressRequest
newCreateAddressRequest _Address = CreateAddressRequest { "Address": _Address }

-- | Constructs CreateAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAddressRequest' :: Address -> ( { "Address" :: (Address) } -> {"Address" :: (Address) } ) -> CreateAddressRequest
newCreateAddressRequest' _Address customize = (CreateAddressRequest <<< customize) { "Address": _Address }



newtype CreateAddressResult = CreateAddressResult 
  { "AddressId" :: NullOrUndefined (String)
  }
derive instance newtypeCreateAddressResult :: Newtype CreateAddressResult _
derive instance repGenericCreateAddressResult :: Generic CreateAddressResult _
instance showCreateAddressResult :: Show CreateAddressResult where show = genericShow
instance decodeCreateAddressResult :: Decode CreateAddressResult where decode = genericDecode options
instance encodeCreateAddressResult :: Encode CreateAddressResult where encode = genericEncode options

-- | Constructs CreateAddressResult from required parameters
newCreateAddressResult :: CreateAddressResult
newCreateAddressResult  = CreateAddressResult { "AddressId": (NullOrUndefined Nothing) }

-- | Constructs CreateAddressResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAddressResult' :: ( { "AddressId" :: NullOrUndefined (String) } -> {"AddressId" :: NullOrUndefined (String) } ) -> CreateAddressResult
newCreateAddressResult'  customize = (CreateAddressResult <<< customize) { "AddressId": (NullOrUndefined Nothing) }



newtype CreateClusterRequest = CreateClusterRequest 
  { "JobType" :: (JobType)
  , "Resources" :: (JobResource)
  , "Description" :: NullOrUndefined (String)
  , "AddressId" :: (AddressId)
  , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: (RoleARN)
  , "SnowballType" :: NullOrUndefined (SnowballType)
  , "ShippingOption" :: (ShippingOption)
  , "Notification" :: NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where decode = genericDecode options
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where encode = genericEncode options

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> CreateClusterRequest
newCreateClusterRequest _AddressId _JobType _Resources _RoleARN _ShippingOption = CreateClusterRequest { "AddressId": _AddressId, "JobType": _JobType, "Resources": _Resources, "RoleARN": _RoleARN, "ShippingOption": _ShippingOption, "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> ( { "JobType" :: (JobType) , "Resources" :: (JobResource) , "Description" :: NullOrUndefined (String) , "AddressId" :: (AddressId) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: (RoleARN) , "SnowballType" :: NullOrUndefined (SnowballType) , "ShippingOption" :: (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"JobType" :: (JobType) , "Resources" :: (JobResource) , "Description" :: NullOrUndefined (String) , "AddressId" :: (AddressId) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: (RoleARN) , "SnowballType" :: NullOrUndefined (SnowballType) , "ShippingOption" :: (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> CreateClusterRequest
newCreateClusterRequest' _AddressId _JobType _Resources _RoleARN _ShippingOption customize = (CreateClusterRequest <<< customize) { "AddressId": _AddressId, "JobType": _JobType, "Resources": _Resources, "RoleARN": _RoleARN, "ShippingOption": _ShippingOption, "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype CreateClusterResult = CreateClusterResult 
  { "ClusterId" :: NullOrUndefined (ClusterId)
  }
derive instance newtypeCreateClusterResult :: Newtype CreateClusterResult _
derive instance repGenericCreateClusterResult :: Generic CreateClusterResult _
instance showCreateClusterResult :: Show CreateClusterResult where show = genericShow
instance decodeCreateClusterResult :: Decode CreateClusterResult where decode = genericDecode options
instance encodeCreateClusterResult :: Encode CreateClusterResult where encode = genericEncode options

-- | Constructs CreateClusterResult from required parameters
newCreateClusterResult :: CreateClusterResult
newCreateClusterResult  = CreateClusterResult { "ClusterId": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResult' :: ( { "ClusterId" :: NullOrUndefined (ClusterId) } -> {"ClusterId" :: NullOrUndefined (ClusterId) } ) -> CreateClusterResult
newCreateClusterResult'  customize = (CreateClusterResult <<< customize) { "ClusterId": (NullOrUndefined Nothing) }



newtype CreateJobRequest = CreateJobRequest 
  { "JobType" :: NullOrUndefined (JobType)
  , "Resources" :: NullOrUndefined (JobResource)
  , "Description" :: NullOrUndefined (String)
  , "AddressId" :: NullOrUndefined (AddressId)
  , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity)
  , "ShippingOption" :: NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined (Notification)
  , "ClusterId" :: NullOrUndefined (ClusterId)
  , "SnowballType" :: NullOrUndefined (SnowballType)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeCreateJobRequest :: Newtype CreateJobRequest _
derive instance repGenericCreateJobRequest :: Generic CreateJobRequest _
instance showCreateJobRequest :: Show CreateJobRequest where show = genericShow
instance decodeCreateJobRequest :: Decode CreateJobRequest where decode = genericDecode options
instance encodeCreateJobRequest :: Encode CreateJobRequest where encode = genericEncode options

-- | Constructs CreateJobRequest from required parameters
newCreateJobRequest :: CreateJobRequest
newCreateJobRequest  = CreateJobRequest { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs CreateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobRequest' :: ( { "JobType" :: NullOrUndefined (JobType) , "Resources" :: NullOrUndefined (JobResource) , "Description" :: NullOrUndefined (String) , "AddressId" :: NullOrUndefined (AddressId) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ClusterId" :: NullOrUndefined (ClusterId) , "SnowballType" :: NullOrUndefined (SnowballType) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"JobType" :: NullOrUndefined (JobType) , "Resources" :: NullOrUndefined (JobResource) , "Description" :: NullOrUndefined (String) , "AddressId" :: NullOrUndefined (AddressId) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ClusterId" :: NullOrUndefined (ClusterId) , "SnowballType" :: NullOrUndefined (SnowballType) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> CreateJobRequest
newCreateJobRequest'  customize = (CreateJobRequest <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype CreateJobResult = CreateJobResult 
  { "JobId" :: NullOrUndefined (JobId)
  }
derive instance newtypeCreateJobResult :: Newtype CreateJobResult _
derive instance repGenericCreateJobResult :: Generic CreateJobResult _
instance showCreateJobResult :: Show CreateJobResult where show = genericShow
instance decodeCreateJobResult :: Decode CreateJobResult where decode = genericDecode options
instance encodeCreateJobResult :: Encode CreateJobResult where encode = genericEncode options

-- | Constructs CreateJobResult from required parameters
newCreateJobResult :: CreateJobResult
newCreateJobResult  = CreateJobResult { "JobId": (NullOrUndefined Nothing) }

-- | Constructs CreateJobResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobResult' :: ( { "JobId" :: NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined (JobId) } ) -> CreateJobResult
newCreateJobResult'  customize = (CreateJobResult <<< customize) { "JobId": (NullOrUndefined Nothing) }



-- | <p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
newtype DataTransfer = DataTransfer 
  { "BytesTransferred" :: NullOrUndefined (Number)
  , "ObjectsTransferred" :: NullOrUndefined (Number)
  , "TotalBytes" :: NullOrUndefined (Number)
  , "TotalObjects" :: NullOrUndefined (Number)
  }
derive instance newtypeDataTransfer :: Newtype DataTransfer _
derive instance repGenericDataTransfer :: Generic DataTransfer _
instance showDataTransfer :: Show DataTransfer where show = genericShow
instance decodeDataTransfer :: Decode DataTransfer where decode = genericDecode options
instance encodeDataTransfer :: Encode DataTransfer where encode = genericEncode options

-- | Constructs DataTransfer from required parameters
newDataTransfer :: DataTransfer
newDataTransfer  = DataTransfer { "BytesTransferred": (NullOrUndefined Nothing), "ObjectsTransferred": (NullOrUndefined Nothing), "TotalBytes": (NullOrUndefined Nothing), "TotalObjects": (NullOrUndefined Nothing) }

-- | Constructs DataTransfer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataTransfer' :: ( { "BytesTransferred" :: NullOrUndefined (Number) , "ObjectsTransferred" :: NullOrUndefined (Number) , "TotalBytes" :: NullOrUndefined (Number) , "TotalObjects" :: NullOrUndefined (Number) } -> {"BytesTransferred" :: NullOrUndefined (Number) , "ObjectsTransferred" :: NullOrUndefined (Number) , "TotalBytes" :: NullOrUndefined (Number) , "TotalObjects" :: NullOrUndefined (Number) } ) -> DataTransfer
newDataTransfer'  customize = (DataTransfer <<< customize) { "BytesTransferred": (NullOrUndefined Nothing), "ObjectsTransferred": (NullOrUndefined Nothing), "TotalBytes": (NullOrUndefined Nothing), "TotalObjects": (NullOrUndefined Nothing) }



newtype DescribeAddressRequest = DescribeAddressRequest 
  { "AddressId" :: (AddressId)
  }
derive instance newtypeDescribeAddressRequest :: Newtype DescribeAddressRequest _
derive instance repGenericDescribeAddressRequest :: Generic DescribeAddressRequest _
instance showDescribeAddressRequest :: Show DescribeAddressRequest where show = genericShow
instance decodeDescribeAddressRequest :: Decode DescribeAddressRequest where decode = genericDecode options
instance encodeDescribeAddressRequest :: Encode DescribeAddressRequest where encode = genericEncode options

-- | Constructs DescribeAddressRequest from required parameters
newDescribeAddressRequest :: AddressId -> DescribeAddressRequest
newDescribeAddressRequest _AddressId = DescribeAddressRequest { "AddressId": _AddressId }

-- | Constructs DescribeAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressRequest' :: AddressId -> ( { "AddressId" :: (AddressId) } -> {"AddressId" :: (AddressId) } ) -> DescribeAddressRequest
newDescribeAddressRequest' _AddressId customize = (DescribeAddressRequest <<< customize) { "AddressId": _AddressId }



newtype DescribeAddressResult = DescribeAddressResult 
  { "Address" :: NullOrUndefined (Address)
  }
derive instance newtypeDescribeAddressResult :: Newtype DescribeAddressResult _
derive instance repGenericDescribeAddressResult :: Generic DescribeAddressResult _
instance showDescribeAddressResult :: Show DescribeAddressResult where show = genericShow
instance decodeDescribeAddressResult :: Decode DescribeAddressResult where decode = genericDecode options
instance encodeDescribeAddressResult :: Encode DescribeAddressResult where encode = genericEncode options

-- | Constructs DescribeAddressResult from required parameters
newDescribeAddressResult :: DescribeAddressResult
newDescribeAddressResult  = DescribeAddressResult { "Address": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressResult' :: ( { "Address" :: NullOrUndefined (Address) } -> {"Address" :: NullOrUndefined (Address) } ) -> DescribeAddressResult
newDescribeAddressResult'  customize = (DescribeAddressResult <<< customize) { "Address": (NullOrUndefined Nothing) }



newtype DescribeAddressesRequest = DescribeAddressesRequest 
  { "MaxResults" :: NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeAddressesRequest :: Newtype DescribeAddressesRequest _
derive instance repGenericDescribeAddressesRequest :: Generic DescribeAddressesRequest _
instance showDescribeAddressesRequest :: Show DescribeAddressesRequest where show = genericShow
instance decodeDescribeAddressesRequest :: Decode DescribeAddressesRequest where decode = genericDecode options
instance encodeDescribeAddressesRequest :: Encode DescribeAddressesRequest where encode = genericEncode options

-- | Constructs DescribeAddressesRequest from required parameters
newDescribeAddressesRequest :: DescribeAddressesRequest
newDescribeAddressesRequest  = DescribeAddressesRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressesRequest' :: ( { "MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeAddressesRequest
newDescribeAddressesRequest'  customize = (DescribeAddressesRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeAddressesResult = DescribeAddressesResult 
  { "Addresses" :: NullOrUndefined (AddressList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeDescribeAddressesResult :: Newtype DescribeAddressesResult _
derive instance repGenericDescribeAddressesResult :: Generic DescribeAddressesResult _
instance showDescribeAddressesResult :: Show DescribeAddressesResult where show = genericShow
instance decodeDescribeAddressesResult :: Decode DescribeAddressesResult where decode = genericDecode options
instance encodeDescribeAddressesResult :: Encode DescribeAddressesResult where encode = genericEncode options

-- | Constructs DescribeAddressesResult from required parameters
newDescribeAddressesResult :: DescribeAddressesResult
newDescribeAddressesResult  = DescribeAddressesResult { "Addresses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressesResult' :: ( { "Addresses" :: NullOrUndefined (AddressList) , "NextToken" :: NullOrUndefined (String) } -> {"Addresses" :: NullOrUndefined (AddressList) , "NextToken" :: NullOrUndefined (String) } ) -> DescribeAddressesResult
newDescribeAddressesResult'  customize = (DescribeAddressesResult <<< customize) { "Addresses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeClusterRequest = DescribeClusterRequest 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeDescribeClusterRequest :: Newtype DescribeClusterRequest _
derive instance repGenericDescribeClusterRequest :: Generic DescribeClusterRequest _
instance showDescribeClusterRequest :: Show DescribeClusterRequest where show = genericShow
instance decodeDescribeClusterRequest :: Decode DescribeClusterRequest where decode = genericDecode options
instance encodeDescribeClusterRequest :: Encode DescribeClusterRequest where encode = genericEncode options

-- | Constructs DescribeClusterRequest from required parameters
newDescribeClusterRequest :: ClusterId -> DescribeClusterRequest
newDescribeClusterRequest _ClusterId = DescribeClusterRequest { "ClusterId": _ClusterId }

-- | Constructs DescribeClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> DescribeClusterRequest
newDescribeClusterRequest' _ClusterId customize = (DescribeClusterRequest <<< customize) { "ClusterId": _ClusterId }



newtype DescribeClusterResult = DescribeClusterResult 
  { "ClusterMetadata" :: NullOrUndefined (ClusterMetadata)
  }
derive instance newtypeDescribeClusterResult :: Newtype DescribeClusterResult _
derive instance repGenericDescribeClusterResult :: Generic DescribeClusterResult _
instance showDescribeClusterResult :: Show DescribeClusterResult where show = genericShow
instance decodeDescribeClusterResult :: Decode DescribeClusterResult where decode = genericDecode options
instance encodeDescribeClusterResult :: Encode DescribeClusterResult where encode = genericEncode options

-- | Constructs DescribeClusterResult from required parameters
newDescribeClusterResult :: DescribeClusterResult
newDescribeClusterResult  = DescribeClusterResult { "ClusterMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterResult' :: ( { "ClusterMetadata" :: NullOrUndefined (ClusterMetadata) } -> {"ClusterMetadata" :: NullOrUndefined (ClusterMetadata) } ) -> DescribeClusterResult
newDescribeClusterResult'  customize = (DescribeClusterResult <<< customize) { "ClusterMetadata": (NullOrUndefined Nothing) }



newtype DescribeJobRequest = DescribeJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeDescribeJobRequest :: Newtype DescribeJobRequest _
derive instance repGenericDescribeJobRequest :: Generic DescribeJobRequest _
instance showDescribeJobRequest :: Show DescribeJobRequest where show = genericShow
instance decodeDescribeJobRequest :: Decode DescribeJobRequest where decode = genericDecode options
instance encodeDescribeJobRequest :: Encode DescribeJobRequest where encode = genericEncode options

-- | Constructs DescribeJobRequest from required parameters
newDescribeJobRequest :: JobId -> DescribeJobRequest
newDescribeJobRequest _JobId = DescribeJobRequest { "JobId": _JobId }

-- | Constructs DescribeJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> DescribeJobRequest
newDescribeJobRequest' _JobId customize = (DescribeJobRequest <<< customize) { "JobId": _JobId }



newtype DescribeJobResult = DescribeJobResult 
  { "JobMetadata" :: NullOrUndefined (JobMetadata)
  , "SubJobMetadata" :: NullOrUndefined (JobMetadataList)
  }
derive instance newtypeDescribeJobResult :: Newtype DescribeJobResult _
derive instance repGenericDescribeJobResult :: Generic DescribeJobResult _
instance showDescribeJobResult :: Show DescribeJobResult where show = genericShow
instance decodeDescribeJobResult :: Decode DescribeJobResult where decode = genericDecode options
instance encodeDescribeJobResult :: Encode DescribeJobResult where encode = genericEncode options

-- | Constructs DescribeJobResult from required parameters
newDescribeJobResult :: DescribeJobResult
newDescribeJobResult  = DescribeJobResult { "JobMetadata": (NullOrUndefined Nothing), "SubJobMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobResult' :: ( { "JobMetadata" :: NullOrUndefined (JobMetadata) , "SubJobMetadata" :: NullOrUndefined (JobMetadataList) } -> {"JobMetadata" :: NullOrUndefined (JobMetadata) , "SubJobMetadata" :: NullOrUndefined (JobMetadataList) } ) -> DescribeJobResult
newDescribeJobResult'  customize = (DescribeJobResult <<< customize) { "JobMetadata": (NullOrUndefined Nothing), "SubJobMetadata": (NullOrUndefined Nothing) }



-- | <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
newtype EventTriggerDefinition = EventTriggerDefinition 
  { "EventResourceARN" :: NullOrUndefined (ResourceARN)
  }
derive instance newtypeEventTriggerDefinition :: Newtype EventTriggerDefinition _
derive instance repGenericEventTriggerDefinition :: Generic EventTriggerDefinition _
instance showEventTriggerDefinition :: Show EventTriggerDefinition where show = genericShow
instance decodeEventTriggerDefinition :: Decode EventTriggerDefinition where decode = genericDecode options
instance encodeEventTriggerDefinition :: Encode EventTriggerDefinition where encode = genericEncode options

-- | Constructs EventTriggerDefinition from required parameters
newEventTriggerDefinition :: EventTriggerDefinition
newEventTriggerDefinition  = EventTriggerDefinition { "EventResourceARN": (NullOrUndefined Nothing) }

-- | Constructs EventTriggerDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventTriggerDefinition' :: ( { "EventResourceARN" :: NullOrUndefined (ResourceARN) } -> {"EventResourceARN" :: NullOrUndefined (ResourceARN) } ) -> EventTriggerDefinition
newEventTriggerDefinition'  customize = (EventTriggerDefinition <<< customize) { "EventResourceARN": (NullOrUndefined Nothing) }



newtype EventTriggerDefinitionList = EventTriggerDefinitionList (Array EventTriggerDefinition)
derive instance newtypeEventTriggerDefinitionList :: Newtype EventTriggerDefinitionList _
derive instance repGenericEventTriggerDefinitionList :: Generic EventTriggerDefinitionList _
instance showEventTriggerDefinitionList :: Show EventTriggerDefinitionList where show = genericShow
instance decodeEventTriggerDefinitionList :: Decode EventTriggerDefinitionList where decode = genericDecode options
instance encodeEventTriggerDefinitionList :: Encode EventTriggerDefinitionList where encode = genericEncode options



newtype GetJobManifestRequest = GetJobManifestRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeGetJobManifestRequest :: Newtype GetJobManifestRequest _
derive instance repGenericGetJobManifestRequest :: Generic GetJobManifestRequest _
instance showGetJobManifestRequest :: Show GetJobManifestRequest where show = genericShow
instance decodeGetJobManifestRequest :: Decode GetJobManifestRequest where decode = genericDecode options
instance encodeGetJobManifestRequest :: Encode GetJobManifestRequest where encode = genericEncode options

-- | Constructs GetJobManifestRequest from required parameters
newGetJobManifestRequest :: JobId -> GetJobManifestRequest
newGetJobManifestRequest _JobId = GetJobManifestRequest { "JobId": _JobId }

-- | Constructs GetJobManifestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobManifestRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> GetJobManifestRequest
newGetJobManifestRequest' _JobId customize = (GetJobManifestRequest <<< customize) { "JobId": _JobId }



newtype GetJobManifestResult = GetJobManifestResult 
  { "ManifestURI" :: NullOrUndefined (String)
  }
derive instance newtypeGetJobManifestResult :: Newtype GetJobManifestResult _
derive instance repGenericGetJobManifestResult :: Generic GetJobManifestResult _
instance showGetJobManifestResult :: Show GetJobManifestResult where show = genericShow
instance decodeGetJobManifestResult :: Decode GetJobManifestResult where decode = genericDecode options
instance encodeGetJobManifestResult :: Encode GetJobManifestResult where encode = genericEncode options

-- | Constructs GetJobManifestResult from required parameters
newGetJobManifestResult :: GetJobManifestResult
newGetJobManifestResult  = GetJobManifestResult { "ManifestURI": (NullOrUndefined Nothing) }

-- | Constructs GetJobManifestResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobManifestResult' :: ( { "ManifestURI" :: NullOrUndefined (String) } -> {"ManifestURI" :: NullOrUndefined (String) } ) -> GetJobManifestResult
newGetJobManifestResult'  customize = (GetJobManifestResult <<< customize) { "ManifestURI": (NullOrUndefined Nothing) }



newtype GetJobUnlockCodeRequest = GetJobUnlockCodeRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeGetJobUnlockCodeRequest :: Newtype GetJobUnlockCodeRequest _
derive instance repGenericGetJobUnlockCodeRequest :: Generic GetJobUnlockCodeRequest _
instance showGetJobUnlockCodeRequest :: Show GetJobUnlockCodeRequest where show = genericShow
instance decodeGetJobUnlockCodeRequest :: Decode GetJobUnlockCodeRequest where decode = genericDecode options
instance encodeGetJobUnlockCodeRequest :: Encode GetJobUnlockCodeRequest where encode = genericEncode options

-- | Constructs GetJobUnlockCodeRequest from required parameters
newGetJobUnlockCodeRequest :: JobId -> GetJobUnlockCodeRequest
newGetJobUnlockCodeRequest _JobId = GetJobUnlockCodeRequest { "JobId": _JobId }

-- | Constructs GetJobUnlockCodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobUnlockCodeRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> GetJobUnlockCodeRequest
newGetJobUnlockCodeRequest' _JobId customize = (GetJobUnlockCodeRequest <<< customize) { "JobId": _JobId }



newtype GetJobUnlockCodeResult = GetJobUnlockCodeResult 
  { "UnlockCode" :: NullOrUndefined (String)
  }
derive instance newtypeGetJobUnlockCodeResult :: Newtype GetJobUnlockCodeResult _
derive instance repGenericGetJobUnlockCodeResult :: Generic GetJobUnlockCodeResult _
instance showGetJobUnlockCodeResult :: Show GetJobUnlockCodeResult where show = genericShow
instance decodeGetJobUnlockCodeResult :: Decode GetJobUnlockCodeResult where decode = genericDecode options
instance encodeGetJobUnlockCodeResult :: Encode GetJobUnlockCodeResult where encode = genericEncode options

-- | Constructs GetJobUnlockCodeResult from required parameters
newGetJobUnlockCodeResult :: GetJobUnlockCodeResult
newGetJobUnlockCodeResult  = GetJobUnlockCodeResult { "UnlockCode": (NullOrUndefined Nothing) }

-- | Constructs GetJobUnlockCodeResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobUnlockCodeResult' :: ( { "UnlockCode" :: NullOrUndefined (String) } -> {"UnlockCode" :: NullOrUndefined (String) } ) -> GetJobUnlockCodeResult
newGetJobUnlockCodeResult'  customize = (GetJobUnlockCodeResult <<< customize) { "UnlockCode": (NullOrUndefined Nothing) }



newtype GetSnowballUsageRequest = GetSnowballUsageRequest Types.NoArguments
derive instance newtypeGetSnowballUsageRequest :: Newtype GetSnowballUsageRequest _
derive instance repGenericGetSnowballUsageRequest :: Generic GetSnowballUsageRequest _
instance showGetSnowballUsageRequest :: Show GetSnowballUsageRequest where show = genericShow
instance decodeGetSnowballUsageRequest :: Decode GetSnowballUsageRequest where decode = genericDecode options
instance encodeGetSnowballUsageRequest :: Encode GetSnowballUsageRequest where encode = genericEncode options



newtype GetSnowballUsageResult = GetSnowballUsageResult 
  { "SnowballLimit" :: NullOrUndefined (Int)
  , "SnowballsInUse" :: NullOrUndefined (Int)
  }
derive instance newtypeGetSnowballUsageResult :: Newtype GetSnowballUsageResult _
derive instance repGenericGetSnowballUsageResult :: Generic GetSnowballUsageResult _
instance showGetSnowballUsageResult :: Show GetSnowballUsageResult where show = genericShow
instance decodeGetSnowballUsageResult :: Decode GetSnowballUsageResult where decode = genericDecode options
instance encodeGetSnowballUsageResult :: Encode GetSnowballUsageResult where encode = genericEncode options

-- | Constructs GetSnowballUsageResult from required parameters
newGetSnowballUsageResult :: GetSnowballUsageResult
newGetSnowballUsageResult  = GetSnowballUsageResult { "SnowballLimit": (NullOrUndefined Nothing), "SnowballsInUse": (NullOrUndefined Nothing) }

-- | Constructs GetSnowballUsageResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSnowballUsageResult' :: ( { "SnowballLimit" :: NullOrUndefined (Int) , "SnowballsInUse" :: NullOrUndefined (Int) } -> {"SnowballLimit" :: NullOrUndefined (Int) , "SnowballsInUse" :: NullOrUndefined (Int) } ) -> GetSnowballUsageResult
newGetSnowballUsageResult'  customize = (GetSnowballUsageResult <<< customize) { "SnowballLimit": (NullOrUndefined Nothing), "SnowballsInUse": (NullOrUndefined Nothing) }



-- | <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
newtype InvalidAddressException = InvalidAddressException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidAddressException :: Newtype InvalidAddressException _
derive instance repGenericInvalidAddressException :: Generic InvalidAddressException _
instance showInvalidAddressException :: Show InvalidAddressException where show = genericShow
instance decodeInvalidAddressException :: Decode InvalidAddressException where decode = genericDecode options
instance encodeInvalidAddressException :: Encode InvalidAddressException where encode = genericEncode options

-- | Constructs InvalidAddressException from required parameters
newInvalidAddressException :: InvalidAddressException
newInvalidAddressException  = InvalidAddressException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAddressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAddressException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidAddressException
newInvalidAddressException'  customize = (InvalidAddressException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
newtype InvalidInputCombinationException = InvalidInputCombinationException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidInputCombinationException :: Newtype InvalidInputCombinationException _
derive instance repGenericInvalidInputCombinationException :: Generic InvalidInputCombinationException _
instance showInvalidInputCombinationException :: Show InvalidInputCombinationException where show = genericShow
instance decodeInvalidInputCombinationException :: Decode InvalidInputCombinationException where decode = genericDecode options
instance encodeInvalidInputCombinationException :: Encode InvalidInputCombinationException where encode = genericEncode options

-- | Constructs InvalidInputCombinationException from required parameters
newInvalidInputCombinationException :: InvalidInputCombinationException
newInvalidInputCombinationException  = InvalidInputCombinationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputCombinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputCombinationException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidInputCombinationException
newInvalidInputCombinationException'  customize = (InvalidInputCombinationException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
newtype InvalidJobStateException = InvalidJobStateException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidJobStateException :: Newtype InvalidJobStateException _
derive instance repGenericInvalidJobStateException :: Generic InvalidJobStateException _
instance showInvalidJobStateException :: Show InvalidJobStateException where show = genericShow
instance decodeInvalidJobStateException :: Decode InvalidJobStateException where decode = genericDecode options
instance encodeInvalidJobStateException :: Encode InvalidJobStateException where encode = genericEncode options

-- | Constructs InvalidJobStateException from required parameters
newInvalidJobStateException :: InvalidJobStateException
newInvalidJobStateException  = InvalidJobStateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidJobStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidJobStateException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidJobStateException
newInvalidJobStateException'  customize = (InvalidJobStateException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
newtype InvalidResourceException = InvalidResourceException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeInvalidResourceException :: Newtype InvalidResourceException _
derive instance repGenericInvalidResourceException :: Generic InvalidResourceException _
instance showInvalidResourceException :: Show InvalidResourceException where show = genericShow
instance decodeInvalidResourceException :: Decode InvalidResourceException where decode = genericDecode options
instance encodeInvalidResourceException :: Encode InvalidResourceException where encode = genericEncode options

-- | Constructs InvalidResourceException from required parameters
newInvalidResourceException :: InvalidResourceException
newInvalidResourceException  = InvalidResourceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidResourceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResourceException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> InvalidResourceException
newInvalidResourceException'  customize = (InvalidResourceException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where show = genericShow
instance decodeJobId :: Decode JobId where decode = genericDecode options
instance encodeJobId :: Encode JobId where encode = genericEncode options



-- | <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
newtype JobListEntry = JobListEntry 
  { "JobId" :: NullOrUndefined (String)
  , "JobState" :: NullOrUndefined (JobState)
  , "IsMaster" :: NullOrUndefined (Boolean)
  , "JobType" :: NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined (Types.Timestamp)
  , "Description" :: NullOrUndefined (String)
  }
derive instance newtypeJobListEntry :: Newtype JobListEntry _
derive instance repGenericJobListEntry :: Generic JobListEntry _
instance showJobListEntry :: Show JobListEntry where show = genericShow
instance decodeJobListEntry :: Decode JobListEntry where decode = genericDecode options
instance encodeJobListEntry :: Encode JobListEntry where encode = genericEncode options

-- | Constructs JobListEntry from required parameters
newJobListEntry :: JobListEntry
newJobListEntry  = JobListEntry { "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsMaster": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs JobListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobListEntry' :: ( { "JobId" :: NullOrUndefined (String) , "JobState" :: NullOrUndefined (JobState) , "IsMaster" :: NullOrUndefined (Boolean) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) } -> {"JobId" :: NullOrUndefined (String) , "JobState" :: NullOrUndefined (JobState) , "IsMaster" :: NullOrUndefined (Boolean) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined (String) } ) -> JobListEntry
newJobListEntry'  customize = (JobListEntry <<< customize) { "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsMaster": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype JobListEntryList = JobListEntryList (Array JobListEntry)
derive instance newtypeJobListEntryList :: Newtype JobListEntryList _
derive instance repGenericJobListEntryList :: Generic JobListEntryList _
instance showJobListEntryList :: Show JobListEntryList where show = genericShow
instance decodeJobListEntryList :: Decode JobListEntryList where decode = genericDecode options
instance encodeJobListEntryList :: Encode JobListEntryList where encode = genericEncode options



-- | <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
newtype JobLogs = JobLogs 
  { "JobCompletionReportURI" :: NullOrUndefined (String)
  , "JobSuccessLogURI" :: NullOrUndefined (String)
  , "JobFailureLogURI" :: NullOrUndefined (String)
  }
derive instance newtypeJobLogs :: Newtype JobLogs _
derive instance repGenericJobLogs :: Generic JobLogs _
instance showJobLogs :: Show JobLogs where show = genericShow
instance decodeJobLogs :: Decode JobLogs where decode = genericDecode options
instance encodeJobLogs :: Encode JobLogs where encode = genericEncode options

-- | Constructs JobLogs from required parameters
newJobLogs :: JobLogs
newJobLogs  = JobLogs { "JobCompletionReportURI": (NullOrUndefined Nothing), "JobFailureLogURI": (NullOrUndefined Nothing), "JobSuccessLogURI": (NullOrUndefined Nothing) }

-- | Constructs JobLogs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobLogs' :: ( { "JobCompletionReportURI" :: NullOrUndefined (String) , "JobSuccessLogURI" :: NullOrUndefined (String) , "JobFailureLogURI" :: NullOrUndefined (String) } -> {"JobCompletionReportURI" :: NullOrUndefined (String) , "JobSuccessLogURI" :: NullOrUndefined (String) , "JobFailureLogURI" :: NullOrUndefined (String) } ) -> JobLogs
newJobLogs'  customize = (JobLogs <<< customize) { "JobCompletionReportURI": (NullOrUndefined Nothing), "JobFailureLogURI": (NullOrUndefined Nothing), "JobSuccessLogURI": (NullOrUndefined Nothing) }



-- | <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
newtype JobMetadata = JobMetadata 
  { "JobId" :: NullOrUndefined (String)
  , "JobState" :: NullOrUndefined (JobState)
  , "JobType" :: NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined (Types.Timestamp)
  , "Resources" :: NullOrUndefined (JobResource)
  , "Description" :: NullOrUndefined (String)
  , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "AddressId" :: NullOrUndefined (AddressId)
  , "ShippingDetails" :: NullOrUndefined (ShippingDetails)
  , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity)
  , "Notification" :: NullOrUndefined (Notification)
  , "DataTransferProgress" :: NullOrUndefined (DataTransfer)
  , "JobLogInfo" :: NullOrUndefined (JobLogs)
  , "ClusterId" :: NullOrUndefined (String)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeJobMetadata :: Newtype JobMetadata _
derive instance repGenericJobMetadata :: Generic JobMetadata _
instance showJobMetadata :: Show JobMetadata where show = genericShow
instance decodeJobMetadata :: Decode JobMetadata where decode = genericDecode options
instance encodeJobMetadata :: Encode JobMetadata where encode = genericEncode options

-- | Constructs JobMetadata from required parameters
newJobMetadata :: JobMetadata
newJobMetadata  = JobMetadata { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DataTransferProgress": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobLogInfo": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingDetails": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs JobMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobMetadata' :: ( { "JobId" :: NullOrUndefined (String) , "JobState" :: NullOrUndefined (JobState) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined (JobResource) , "Description" :: NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingDetails" :: NullOrUndefined (ShippingDetails) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "Notification" :: NullOrUndefined (Notification) , "DataTransferProgress" :: NullOrUndefined (DataTransfer) , "JobLogInfo" :: NullOrUndefined (JobLogs) , "ClusterId" :: NullOrUndefined (String) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"JobId" :: NullOrUndefined (String) , "JobState" :: NullOrUndefined (JobState) , "JobType" :: NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined (JobResource) , "Description" :: NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined (RoleARN) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingDetails" :: NullOrUndefined (ShippingDetails) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "Notification" :: NullOrUndefined (Notification) , "DataTransferProgress" :: NullOrUndefined (DataTransfer) , "JobLogInfo" :: NullOrUndefined (JobLogs) , "ClusterId" :: NullOrUndefined (String) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> JobMetadata
newJobMetadata'  customize = (JobMetadata <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DataTransferProgress": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobLogInfo": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingDetails": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype JobMetadataList = JobMetadataList (Array JobMetadata)
derive instance newtypeJobMetadataList :: Newtype JobMetadataList _
derive instance repGenericJobMetadataList :: Generic JobMetadataList _
instance showJobMetadataList :: Show JobMetadataList where show = genericShow
instance decodeJobMetadataList :: Decode JobMetadataList where decode = genericDecode options
instance encodeJobMetadataList :: Encode JobMetadataList where encode = genericEncode options



-- | <p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
newtype JobResource = JobResource 
  { "S3Resources" :: NullOrUndefined (S3ResourceList)
  , "LambdaResources" :: NullOrUndefined (LambdaResourceList)
  }
derive instance newtypeJobResource :: Newtype JobResource _
derive instance repGenericJobResource :: Generic JobResource _
instance showJobResource :: Show JobResource where show = genericShow
instance decodeJobResource :: Decode JobResource where decode = genericDecode options
instance encodeJobResource :: Encode JobResource where encode = genericEncode options

-- | Constructs JobResource from required parameters
newJobResource :: JobResource
newJobResource  = JobResource { "LambdaResources": (NullOrUndefined Nothing), "S3Resources": (NullOrUndefined Nothing) }

-- | Constructs JobResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobResource' :: ( { "S3Resources" :: NullOrUndefined (S3ResourceList) , "LambdaResources" :: NullOrUndefined (LambdaResourceList) } -> {"S3Resources" :: NullOrUndefined (S3ResourceList) , "LambdaResources" :: NullOrUndefined (LambdaResourceList) } ) -> JobResource
newJobResource'  customize = (JobResource <<< customize) { "LambdaResources": (NullOrUndefined Nothing), "S3Resources": (NullOrUndefined Nothing) }



newtype JobState = JobState String
derive instance newtypeJobState :: Newtype JobState _
derive instance repGenericJobState :: Generic JobState _
instance showJobState :: Show JobState where show = genericShow
instance decodeJobState :: Decode JobState where decode = genericDecode options
instance encodeJobState :: Encode JobState where encode = genericEncode options



newtype JobStateList = JobStateList (Array JobState)
derive instance newtypeJobStateList :: Newtype JobStateList _
derive instance repGenericJobStateList :: Generic JobStateList _
instance showJobStateList :: Show JobStateList where show = genericShow
instance decodeJobStateList :: Decode JobStateList where decode = genericDecode options
instance encodeJobStateList :: Encode JobStateList where encode = genericEncode options



newtype JobType = JobType String
derive instance newtypeJobType :: Newtype JobType _
derive instance repGenericJobType :: Generic JobType _
instance showJobType :: Show JobType where show = genericShow
instance decodeJobType :: Decode JobType where decode = genericDecode options
instance encodeJobType :: Encode JobType where encode = genericEncode options



-- | <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
newtype KMSRequestFailedException = KMSRequestFailedException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeKMSRequestFailedException :: Newtype KMSRequestFailedException _
derive instance repGenericKMSRequestFailedException :: Generic KMSRequestFailedException _
instance showKMSRequestFailedException :: Show KMSRequestFailedException where show = genericShow
instance decodeKMSRequestFailedException :: Decode KMSRequestFailedException where decode = genericDecode options
instance encodeKMSRequestFailedException :: Encode KMSRequestFailedException where encode = genericEncode options

-- | Constructs KMSRequestFailedException from required parameters
newKMSRequestFailedException :: KMSRequestFailedException
newKMSRequestFailedException  = KMSRequestFailedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs KMSRequestFailedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSRequestFailedException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> KMSRequestFailedException
newKMSRequestFailedException'  customize = (KMSRequestFailedException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
newtype KeyRange = KeyRange 
  { "BeginMarker" :: NullOrUndefined (String)
  , "EndMarker" :: NullOrUndefined (String)
  }
derive instance newtypeKeyRange :: Newtype KeyRange _
derive instance repGenericKeyRange :: Generic KeyRange _
instance showKeyRange :: Show KeyRange where show = genericShow
instance decodeKeyRange :: Decode KeyRange where decode = genericDecode options
instance encodeKeyRange :: Encode KeyRange where encode = genericEncode options

-- | Constructs KeyRange from required parameters
newKeyRange :: KeyRange
newKeyRange  = KeyRange { "BeginMarker": (NullOrUndefined Nothing), "EndMarker": (NullOrUndefined Nothing) }

-- | Constructs KeyRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyRange' :: ( { "BeginMarker" :: NullOrUndefined (String) , "EndMarker" :: NullOrUndefined (String) } -> {"BeginMarker" :: NullOrUndefined (String) , "EndMarker" :: NullOrUndefined (String) } ) -> KeyRange
newKeyRange'  customize = (KeyRange <<< customize) { "BeginMarker": (NullOrUndefined Nothing), "EndMarker": (NullOrUndefined Nothing) }



newtype KmsKeyARN = KmsKeyARN String
derive instance newtypeKmsKeyARN :: Newtype KmsKeyARN _
derive instance repGenericKmsKeyARN :: Generic KmsKeyARN _
instance showKmsKeyARN :: Show KmsKeyARN where show = genericShow
instance decodeKmsKeyARN :: Decode KmsKeyARN where decode = genericDecode options
instance encodeKmsKeyARN :: Encode KmsKeyARN where encode = genericEncode options



-- | <p>Identifies </p>
newtype LambdaResource = LambdaResource 
  { "LambdaArn" :: NullOrUndefined (ResourceARN)
  , "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList)
  }
derive instance newtypeLambdaResource :: Newtype LambdaResource _
derive instance repGenericLambdaResource :: Generic LambdaResource _
instance showLambdaResource :: Show LambdaResource where show = genericShow
instance decodeLambdaResource :: Decode LambdaResource where decode = genericDecode options
instance encodeLambdaResource :: Encode LambdaResource where encode = genericEncode options

-- | Constructs LambdaResource from required parameters
newLambdaResource :: LambdaResource
newLambdaResource  = LambdaResource { "EventTriggers": (NullOrUndefined Nothing), "LambdaArn": (NullOrUndefined Nothing) }

-- | Constructs LambdaResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaResource' :: ( { "LambdaArn" :: NullOrUndefined (ResourceARN) , "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList) } -> {"LambdaArn" :: NullOrUndefined (ResourceARN) , "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList) } ) -> LambdaResource
newLambdaResource'  customize = (LambdaResource <<< customize) { "EventTriggers": (NullOrUndefined Nothing), "LambdaArn": (NullOrUndefined Nothing) }



newtype LambdaResourceList = LambdaResourceList (Array LambdaResource)
derive instance newtypeLambdaResourceList :: Newtype LambdaResourceList _
derive instance repGenericLambdaResourceList :: Generic LambdaResourceList _
instance showLambdaResourceList :: Show LambdaResourceList where show = genericShow
instance decodeLambdaResourceList :: Decode LambdaResourceList where decode = genericDecode options
instance encodeLambdaResourceList :: Encode LambdaResourceList where encode = genericEncode options



newtype ListClusterJobsRequest = ListClusterJobsRequest 
  { "ClusterId" :: (ClusterId)
  , "MaxResults" :: NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListClusterJobsRequest :: Newtype ListClusterJobsRequest _
derive instance repGenericListClusterJobsRequest :: Generic ListClusterJobsRequest _
instance showListClusterJobsRequest :: Show ListClusterJobsRequest where show = genericShow
instance decodeListClusterJobsRequest :: Decode ListClusterJobsRequest where decode = genericDecode options
instance encodeListClusterJobsRequest :: Encode ListClusterJobsRequest where encode = genericEncode options

-- | Constructs ListClusterJobsRequest from required parameters
newListClusterJobsRequest :: ClusterId -> ListClusterJobsRequest
newListClusterJobsRequest _ClusterId = ListClusterJobsRequest { "ClusterId": _ClusterId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClusterJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClusterJobsRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } -> {"ClusterId" :: (ClusterId) , "MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } ) -> ListClusterJobsRequest
newListClusterJobsRequest' _ClusterId customize = (ListClusterJobsRequest <<< customize) { "ClusterId": _ClusterId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClusterJobsResult = ListClusterJobsResult 
  { "JobListEntries" :: NullOrUndefined (JobListEntryList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListClusterJobsResult :: Newtype ListClusterJobsResult _
derive instance repGenericListClusterJobsResult :: Generic ListClusterJobsResult _
instance showListClusterJobsResult :: Show ListClusterJobsResult where show = genericShow
instance decodeListClusterJobsResult :: Decode ListClusterJobsResult where decode = genericDecode options
instance encodeListClusterJobsResult :: Encode ListClusterJobsResult where encode = genericEncode options

-- | Constructs ListClusterJobsResult from required parameters
newListClusterJobsResult :: ListClusterJobsResult
newListClusterJobsResult  = ListClusterJobsResult { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClusterJobsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClusterJobsResult' :: ( { "JobListEntries" :: NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined (String) } -> {"JobListEntries" :: NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined (String) } ) -> ListClusterJobsResult
newListClusterJobsResult'  customize = (ListClusterJobsResult <<< customize) { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClustersRequest = ListClustersRequest 
  { "MaxResults" :: NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListClustersRequest :: Newtype ListClustersRequest _
derive instance repGenericListClustersRequest :: Generic ListClustersRequest _
instance showListClustersRequest :: Show ListClustersRequest where show = genericShow
instance decodeListClustersRequest :: Decode ListClustersRequest where decode = genericDecode options
instance encodeListClustersRequest :: Encode ListClustersRequest where encode = genericEncode options

-- | Constructs ListClustersRequest from required parameters
newListClustersRequest :: ListClustersRequest
newListClustersRequest  = ListClustersRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersRequest' :: ( { "MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } ) -> ListClustersRequest
newListClustersRequest'  customize = (ListClustersRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClustersResult = ListClustersResult 
  { "ClusterListEntries" :: NullOrUndefined (ClusterListEntryList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListClustersResult :: Newtype ListClustersResult _
derive instance repGenericListClustersResult :: Generic ListClustersResult _
instance showListClustersResult :: Show ListClustersResult where show = genericShow
instance decodeListClustersResult :: Decode ListClustersResult where decode = genericDecode options
instance encodeListClustersResult :: Encode ListClustersResult where encode = genericEncode options

-- | Constructs ListClustersResult from required parameters
newListClustersResult :: ListClustersResult
newListClustersResult  = ListClustersResult { "ClusterListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersResult' :: ( { "ClusterListEntries" :: NullOrUndefined (ClusterListEntryList) , "NextToken" :: NullOrUndefined (String) } -> {"ClusterListEntries" :: NullOrUndefined (ClusterListEntryList) , "NextToken" :: NullOrUndefined (String) } ) -> ListClustersResult
newListClustersResult'  customize = (ListClustersResult <<< customize) { "ClusterListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListJobsRequest = ListJobsRequest 
  { "MaxResults" :: NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where decode = genericDecode options
instance encodeListJobsRequest :: Encode ListJobsRequest where encode = genericEncode options

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined (String) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListJobsResult = ListJobsResult 
  { "JobListEntries" :: NullOrUndefined (JobListEntryList)
  , "NextToken" :: NullOrUndefined (String)
  }
derive instance newtypeListJobsResult :: Newtype ListJobsResult _
derive instance repGenericListJobsResult :: Generic ListJobsResult _
instance showListJobsResult :: Show ListJobsResult where show = genericShow
instance decodeListJobsResult :: Decode ListJobsResult where decode = genericDecode options
instance encodeListJobsResult :: Encode ListJobsResult where encode = genericEncode options

-- | Constructs ListJobsResult from required parameters
newListJobsResult :: ListJobsResult
newListJobsResult  = ListJobsResult { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResult' :: ( { "JobListEntries" :: NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined (String) } -> {"JobListEntries" :: NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined (String) } ) -> ListJobsResult
newListJobsResult'  customize = (ListJobsResult <<< customize) { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListLimit = ListLimit Int
derive instance newtypeListLimit :: Newtype ListLimit _
derive instance repGenericListLimit :: Generic ListLimit _
instance showListLimit :: Show ListLimit where show = genericShow
instance decodeListLimit :: Decode ListLimit where decode = genericDecode options
instance encodeListLimit :: Encode ListLimit where encode = genericEncode options



-- | <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
newtype Notification = Notification 
  { "SnsTopicARN" :: NullOrUndefined (SnsTopicARN)
  , "JobStatesToNotify" :: NullOrUndefined (JobStateList)
  , "NotifyAll" :: NullOrUndefined (Boolean)
  }
derive instance newtypeNotification :: Newtype Notification _
derive instance repGenericNotification :: Generic Notification _
instance showNotification :: Show Notification where show = genericShow
instance decodeNotification :: Decode Notification where decode = genericDecode options
instance encodeNotification :: Encode Notification where encode = genericEncode options

-- | Constructs Notification from required parameters
newNotification :: Notification
newNotification  = Notification { "JobStatesToNotify": (NullOrUndefined Nothing), "NotifyAll": (NullOrUndefined Nothing), "SnsTopicARN": (NullOrUndefined Nothing) }

-- | Constructs Notification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotification' :: ( { "SnsTopicARN" :: NullOrUndefined (SnsTopicARN) , "JobStatesToNotify" :: NullOrUndefined (JobStateList) , "NotifyAll" :: NullOrUndefined (Boolean) } -> {"SnsTopicARN" :: NullOrUndefined (SnsTopicARN) , "JobStatesToNotify" :: NullOrUndefined (JobStateList) , "NotifyAll" :: NullOrUndefined (Boolean) } ) -> Notification
newNotification'  customize = (Notification <<< customize) { "JobStatesToNotify": (NullOrUndefined Nothing), "NotifyAll": (NullOrUndefined Nothing), "SnsTopicARN": (NullOrUndefined Nothing) }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where show = genericShow
instance decodeResourceARN :: Decode ResourceARN where decode = genericDecode options
instance encodeResourceARN :: Encode ResourceARN where encode = genericEncode options



newtype RoleARN = RoleARN String
derive instance newtypeRoleARN :: Newtype RoleARN _
derive instance repGenericRoleARN :: Generic RoleARN _
instance showRoleARN :: Show RoleARN where show = genericShow
instance decodeRoleARN :: Decode RoleARN where decode = genericDecode options
instance encodeRoleARN :: Encode RoleARN where encode = genericEncode options



-- | <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
newtype S3Resource = S3Resource 
  { "BucketArn" :: NullOrUndefined (ResourceARN)
  , "KeyRange" :: NullOrUndefined (KeyRange)
  }
derive instance newtypeS3Resource :: Newtype S3Resource _
derive instance repGenericS3Resource :: Generic S3Resource _
instance showS3Resource :: Show S3Resource where show = genericShow
instance decodeS3Resource :: Decode S3Resource where decode = genericDecode options
instance encodeS3Resource :: Encode S3Resource where encode = genericEncode options

-- | Constructs S3Resource from required parameters
newS3Resource :: S3Resource
newS3Resource  = S3Resource { "BucketArn": (NullOrUndefined Nothing), "KeyRange": (NullOrUndefined Nothing) }

-- | Constructs S3Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Resource' :: ( { "BucketArn" :: NullOrUndefined (ResourceARN) , "KeyRange" :: NullOrUndefined (KeyRange) } -> {"BucketArn" :: NullOrUndefined (ResourceARN) , "KeyRange" :: NullOrUndefined (KeyRange) } ) -> S3Resource
newS3Resource'  customize = (S3Resource <<< customize) { "BucketArn": (NullOrUndefined Nothing), "KeyRange": (NullOrUndefined Nothing) }



newtype S3ResourceList = S3ResourceList (Array S3Resource)
derive instance newtypeS3ResourceList :: Newtype S3ResourceList _
derive instance repGenericS3ResourceList :: Generic S3ResourceList _
instance showS3ResourceList :: Show S3ResourceList where show = genericShow
instance decodeS3ResourceList :: Decode S3ResourceList where decode = genericDecode options
instance encodeS3ResourceList :: Encode S3ResourceList where encode = genericEncode options



-- | <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
newtype Shipment = Shipment 
  { "Status" :: NullOrUndefined (String)
  , "TrackingNumber" :: NullOrUndefined (String)
  }
derive instance newtypeShipment :: Newtype Shipment _
derive instance repGenericShipment :: Generic Shipment _
instance showShipment :: Show Shipment where show = genericShow
instance decodeShipment :: Decode Shipment where decode = genericDecode options
instance encodeShipment :: Encode Shipment where encode = genericEncode options

-- | Constructs Shipment from required parameters
newShipment :: Shipment
newShipment  = Shipment { "Status": (NullOrUndefined Nothing), "TrackingNumber": (NullOrUndefined Nothing) }

-- | Constructs Shipment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShipment' :: ( { "Status" :: NullOrUndefined (String) , "TrackingNumber" :: NullOrUndefined (String) } -> {"Status" :: NullOrUndefined (String) , "TrackingNumber" :: NullOrUndefined (String) } ) -> Shipment
newShipment'  customize = (Shipment <<< customize) { "Status": (NullOrUndefined Nothing), "TrackingNumber": (NullOrUndefined Nothing) }



-- | <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
newtype ShippingDetails = ShippingDetails 
  { "ShippingOption" :: NullOrUndefined (ShippingOption)
  , "InboundShipment" :: NullOrUndefined (Shipment)
  , "OutboundShipment" :: NullOrUndefined (Shipment)
  }
derive instance newtypeShippingDetails :: Newtype ShippingDetails _
derive instance repGenericShippingDetails :: Generic ShippingDetails _
instance showShippingDetails :: Show ShippingDetails where show = genericShow
instance decodeShippingDetails :: Decode ShippingDetails where decode = genericDecode options
instance encodeShippingDetails :: Encode ShippingDetails where encode = genericEncode options

-- | Constructs ShippingDetails from required parameters
newShippingDetails :: ShippingDetails
newShippingDetails  = ShippingDetails { "InboundShipment": (NullOrUndefined Nothing), "OutboundShipment": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }

-- | Constructs ShippingDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShippingDetails' :: ( { "ShippingOption" :: NullOrUndefined (ShippingOption) , "InboundShipment" :: NullOrUndefined (Shipment) , "OutboundShipment" :: NullOrUndefined (Shipment) } -> {"ShippingOption" :: NullOrUndefined (ShippingOption) , "InboundShipment" :: NullOrUndefined (Shipment) , "OutboundShipment" :: NullOrUndefined (Shipment) } ) -> ShippingDetails
newShippingDetails'  customize = (ShippingDetails <<< customize) { "InboundShipment": (NullOrUndefined Nothing), "OutboundShipment": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }



newtype ShippingOption = ShippingOption String
derive instance newtypeShippingOption :: Newtype ShippingOption _
derive instance repGenericShippingOption :: Generic ShippingOption _
instance showShippingOption :: Show ShippingOption where show = genericShow
instance decodeShippingOption :: Decode ShippingOption where decode = genericDecode options
instance encodeShippingOption :: Encode ShippingOption where encode = genericEncode options



newtype SnowballCapacity = SnowballCapacity String
derive instance newtypeSnowballCapacity :: Newtype SnowballCapacity _
derive instance repGenericSnowballCapacity :: Generic SnowballCapacity _
instance showSnowballCapacity :: Show SnowballCapacity where show = genericShow
instance decodeSnowballCapacity :: Decode SnowballCapacity where decode = genericDecode options
instance encodeSnowballCapacity :: Encode SnowballCapacity where encode = genericEncode options



newtype SnowballType = SnowballType String
derive instance newtypeSnowballType :: Newtype SnowballType _
derive instance repGenericSnowballType :: Generic SnowballType _
instance showSnowballType :: Show SnowballType where show = genericShow
instance decodeSnowballType :: Decode SnowballType where decode = genericDecode options
instance encodeSnowballType :: Encode SnowballType where encode = genericEncode options



newtype SnsTopicARN = SnsTopicARN String
derive instance newtypeSnsTopicARN :: Newtype SnsTopicARN _
derive instance repGenericSnsTopicARN :: Generic SnsTopicARN _
instance showSnsTopicARN :: Show SnsTopicARN where show = genericShow
instance decodeSnsTopicARN :: Decode SnsTopicARN where decode = genericDecode options
instance encodeSnsTopicARN :: Encode SnsTopicARN where encode = genericEncode options



-- | <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
newtype UnsupportedAddressException = UnsupportedAddressException 
  { "Message" :: NullOrUndefined (String)
  }
derive instance newtypeUnsupportedAddressException :: Newtype UnsupportedAddressException _
derive instance repGenericUnsupportedAddressException :: Generic UnsupportedAddressException _
instance showUnsupportedAddressException :: Show UnsupportedAddressException where show = genericShow
instance decodeUnsupportedAddressException :: Decode UnsupportedAddressException where decode = genericDecode options
instance encodeUnsupportedAddressException :: Encode UnsupportedAddressException where encode = genericEncode options

-- | Constructs UnsupportedAddressException from required parameters
newUnsupportedAddressException :: UnsupportedAddressException
newUnsupportedAddressException  = UnsupportedAddressException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedAddressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedAddressException' :: ( { "Message" :: NullOrUndefined (String) } -> {"Message" :: NullOrUndefined (String) } ) -> UnsupportedAddressException
newUnsupportedAddressException'  customize = (UnsupportedAddressException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype UpdateClusterRequest = UpdateClusterRequest 
  { "ClusterId" :: (ClusterId)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "Description" :: NullOrUndefined (String)
  , "Resources" :: NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeUpdateClusterRequest :: Newtype UpdateClusterRequest _
derive instance repGenericUpdateClusterRequest :: Generic UpdateClusterRequest _
instance showUpdateClusterRequest :: Show UpdateClusterRequest where show = genericShow
instance decodeUpdateClusterRequest :: Decode UpdateClusterRequest where decode = genericDecode options
instance encodeUpdateClusterRequest :: Encode UpdateClusterRequest where encode = genericEncode options

-- | Constructs UpdateClusterRequest from required parameters
newUpdateClusterRequest :: ClusterId -> UpdateClusterRequest
newUpdateClusterRequest _ClusterId = UpdateClusterRequest { "ClusterId": _ClusterId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }

-- | Constructs UpdateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "RoleARN" :: NullOrUndefined (RoleARN) , "Description" :: NullOrUndefined (String) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"ClusterId" :: (ClusterId) , "RoleARN" :: NullOrUndefined (RoleARN) , "Description" :: NullOrUndefined (String) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> UpdateClusterRequest
newUpdateClusterRequest' _ClusterId customize = (UpdateClusterRequest <<< customize) { "ClusterId": _ClusterId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }



newtype UpdateClusterResult = UpdateClusterResult Types.NoArguments
derive instance newtypeUpdateClusterResult :: Newtype UpdateClusterResult _
derive instance repGenericUpdateClusterResult :: Generic UpdateClusterResult _
instance showUpdateClusterResult :: Show UpdateClusterResult where show = genericShow
instance decodeUpdateClusterResult :: Decode UpdateClusterResult where decode = genericDecode options
instance encodeUpdateClusterResult :: Encode UpdateClusterResult where encode = genericEncode options



newtype UpdateJobRequest = UpdateJobRequest 
  { "JobId" :: (JobId)
  , "RoleARN" :: NullOrUndefined (RoleARN)
  , "Notification" :: NullOrUndefined (Notification)
  , "Resources" :: NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined (ShippingOption)
  , "Description" :: NullOrUndefined (String)
  , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity)
  , "ForwardingAddressId" :: NullOrUndefined (AddressId)
  }
derive instance newtypeUpdateJobRequest :: Newtype UpdateJobRequest _
derive instance repGenericUpdateJobRequest :: Generic UpdateJobRequest _
instance showUpdateJobRequest :: Show UpdateJobRequest where show = genericShow
instance decodeUpdateJobRequest :: Decode UpdateJobRequest where decode = genericDecode options
instance encodeUpdateJobRequest :: Encode UpdateJobRequest where encode = genericEncode options

-- | Constructs UpdateJobRequest from required parameters
newUpdateJobRequest :: JobId -> UpdateJobRequest
newUpdateJobRequest _JobId = UpdateJobRequest { "JobId": _JobId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobRequest' :: JobId -> ( { "JobId" :: (JobId) , "RoleARN" :: NullOrUndefined (RoleARN) , "Notification" :: NullOrUndefined (Notification) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Description" :: NullOrUndefined (String) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> {"JobId" :: (JobId) , "RoleARN" :: NullOrUndefined (RoleARN) , "Notification" :: NullOrUndefined (Notification) , "Resources" :: NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined (ShippingOption) , "Description" :: NullOrUndefined (String) , "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity) , "ForwardingAddressId" :: NullOrUndefined (AddressId) } ) -> UpdateJobRequest
newUpdateJobRequest' _JobId customize = (UpdateJobRequest <<< customize) { "JobId": _JobId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing) }



newtype UpdateJobResult = UpdateJobResult Types.NoArguments
derive instance newtypeUpdateJobResult :: Newtype UpdateJobResult _
derive instance repGenericUpdateJobResult :: Generic UpdateJobResult _
instance showUpdateJobResult :: Show UpdateJobResult where show = genericShow
instance decodeUpdateJobResult :: Decode UpdateJobResult where decode = genericDecode options
instance encodeUpdateJobResult :: Encode UpdateJobResult where encode = genericEncode options

