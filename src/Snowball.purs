

-- | <p>AWS Snowball is a petabyte-scale data transport solution that uses secure appliances to transfer large amounts of data between your on-premises data centers and Amazon Simple Storage Service (Amazon S3). The Snowball commands described here provide access to the same functionality that is available in the AWS Snowball Management Console, which enables you to create and manage jobs for Snowball. To transfer data locally with a Snowball appliance, you'll need to use the Snowball client or the Amazon S3 API adapter for Snowball. For more information, see the <a href="http://docs.aws.amazon.com/AWSImportExport/latest/ug/api-reference.html">User Guide</a>.</p>
module AWS.Snowball where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types


-- | <p>Cancels a cluster job. You can only cancel a cluster job while it's in the <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster job to cancel it.</p>
cancelCluster :: forall eff. CancelClusterRequest -> Aff (exception :: EXCEPTION | eff) CancelClusterResult
cancelCluster = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "cancelCluster"


-- | <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code> value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or <code>DescribeJob</code> action will return a job's <code>JobState</code> as part of the response element data returned.</p>
cancelJob :: forall eff. CancelJobRequest -> Aff (exception :: EXCEPTION | eff) CancelJobResult
cancelJob = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "cancelJob"


-- | <p>Creates an address for a Snowball to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.</p>
createAddress :: forall eff. CreateAddressRequest -> Aff (exception :: EXCEPTION | eff) CreateAddressResult
createAddress = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "createAddress"


-- | <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.</p>
createCluster :: forall eff. CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResult
createCluster = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "createCluster"


-- | <p>Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the <code>clusterId</code> value; the other job attributes are inherited from the cluster. </p>
createJob :: forall eff. CreateJobRequest -> Aff (exception :: EXCEPTION | eff) CreateJobResult
createJob = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "createJob"


-- | <p>Takes an <code>AddressId</code> and returns specific details about that address in the form of an <code>Address</code> object.</p>
describeAddress :: forall eff. DescribeAddressRequest -> Aff (exception :: EXCEPTION | eff) DescribeAddressResult
describeAddress = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "describeAddress"


-- | <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.</p>
describeAddresses :: forall eff. DescribeAddressesRequest -> Aff (exception :: EXCEPTION | eff) DescribeAddressesResult
describeAddresses = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "describeAddresses"


-- | <p>Returns information about a specific cluster including shipping information, cluster status, and other important metadata.</p>
describeCluster :: forall eff. DescribeClusterRequest -> Aff (exception :: EXCEPTION | eff) DescribeClusterResult
describeCluster = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "describeCluster"


-- | <p>Returns information about a specific job including shipping information, job status, and other important metadata. </p>
describeJob :: forall eff. DescribeJobRequest -> Aff (exception :: EXCEPTION | eff) DescribeJobResult
describeJob = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "describeJob"


-- | <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the <code>GetJobManifest</code> action.</p> <p>The manifest is an encrypted file that you can download after your job enters the <code>WithCustomer</code> status. The manifest is decrypted by using the <code>UnlockCode</code> code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of an <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p> <p>The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.</p>
getJobManifest :: forall eff. GetJobManifestRequest -> Aff (exception :: EXCEPTION | eff) GetJobManifestResult
getJobManifest = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "getJobManifest"


-- | <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular <code>UnlockCode</code> value can be accessed for up to 90 days after the associated job has been created.</p> <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of the <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p>
getJobUnlockCode :: forall eff. GetJobUnlockCodeRequest -> Aff (exception :: EXCEPTION | eff) GetJobUnlockCodeResult
getJobUnlockCode = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "getJobUnlockCode"


-- | <p>Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.</p> <p>The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.</p>
getSnowballUsage :: forall eff. GetSnowballUsageRequest -> Aff (exception :: EXCEPTION | eff) GetSnowballUsageResult
getSnowballUsage = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "getSnowballUsage"


-- | <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.</p>
listClusterJobs :: forall eff. ListClusterJobsRequest -> Aff (exception :: EXCEPTION | eff) ListClusterJobsResult
listClusterJobs = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "listClusterJobs"


-- | <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>
listClusters :: forall eff. ListClustersRequest -> Aff (exception :: EXCEPTION | eff) ListClustersResult
listClusters = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "listClusters"


-- | <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.</p>
listJobs :: forall eff. ListJobsRequest -> Aff (exception :: EXCEPTION | eff) ListJobsResult
listJobs = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "listJobs"


-- | <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code> state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.</p>
updateCluster :: forall eff. UpdateClusterRequest -> Aff (exception :: EXCEPTION | eff) UpdateClusterResult
updateCluster = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "updateCluster"


-- | <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.</p>
updateJob :: forall eff. UpdateJobRequest -> Aff (exception :: EXCEPTION | eff) UpdateJobResult
updateJob = Request.request service method  where
    service = Request.ServiceName "Snowball"
    method = Request.MethodName "updateJob"


-- | <p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>
newtype Address = Address 
  { "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Company" :: NullOrUndefined.NullOrUndefined (String)
  , "Street1" :: NullOrUndefined.NullOrUndefined (String)
  , "Street2" :: NullOrUndefined.NullOrUndefined (String)
  , "Street3" :: NullOrUndefined.NullOrUndefined (String)
  , "City" :: NullOrUndefined.NullOrUndefined (String)
  , "StateOrProvince" :: NullOrUndefined.NullOrUndefined (String)
  , "PrefectureOrDistrict" :: NullOrUndefined.NullOrUndefined (String)
  , "Landmark" :: NullOrUndefined.NullOrUndefined (String)
  , "Country" :: NullOrUndefined.NullOrUndefined (String)
  , "PostalCode" :: NullOrUndefined.NullOrUndefined (String)
  , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String)
  , "IsRestricted" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeAddress :: Newtype Address _
derive instance repGenericAddress :: Generic Address _
instance showAddress :: Show Address where
  show = genericShow
instance decodeAddress :: Decode Address where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddress :: Encode Address where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Address from required parameters
newAddress :: Address
newAddress  = Address { "AddressId": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "Company": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "IsRestricted": (NullOrUndefined Nothing), "Landmark": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "PostalCode": (NullOrUndefined Nothing), "PrefectureOrDistrict": (NullOrUndefined Nothing), "StateOrProvince": (NullOrUndefined Nothing), "Street1": (NullOrUndefined Nothing), "Street2": (NullOrUndefined Nothing), "Street3": (NullOrUndefined Nothing) }

-- | Constructs Address's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddress' :: ( { "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Company" :: NullOrUndefined.NullOrUndefined (String) , "Street1" :: NullOrUndefined.NullOrUndefined (String) , "Street2" :: NullOrUndefined.NullOrUndefined (String) , "Street3" :: NullOrUndefined.NullOrUndefined (String) , "City" :: NullOrUndefined.NullOrUndefined (String) , "StateOrProvince" :: NullOrUndefined.NullOrUndefined (String) , "PrefectureOrDistrict" :: NullOrUndefined.NullOrUndefined (String) , "Landmark" :: NullOrUndefined.NullOrUndefined (String) , "Country" :: NullOrUndefined.NullOrUndefined (String) , "PostalCode" :: NullOrUndefined.NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String) , "IsRestricted" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Company" :: NullOrUndefined.NullOrUndefined (String) , "Street1" :: NullOrUndefined.NullOrUndefined (String) , "Street2" :: NullOrUndefined.NullOrUndefined (String) , "Street3" :: NullOrUndefined.NullOrUndefined (String) , "City" :: NullOrUndefined.NullOrUndefined (String) , "StateOrProvince" :: NullOrUndefined.NullOrUndefined (String) , "PrefectureOrDistrict" :: NullOrUndefined.NullOrUndefined (String) , "Landmark" :: NullOrUndefined.NullOrUndefined (String) , "Country" :: NullOrUndefined.NullOrUndefined (String) , "PostalCode" :: NullOrUndefined.NullOrUndefined (String) , "PhoneNumber" :: NullOrUndefined.NullOrUndefined (String) , "IsRestricted" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> Address
newAddress'  customize = (Address <<< customize) { "AddressId": (NullOrUndefined Nothing), "City": (NullOrUndefined Nothing), "Company": (NullOrUndefined Nothing), "Country": (NullOrUndefined Nothing), "IsRestricted": (NullOrUndefined Nothing), "Landmark": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PhoneNumber": (NullOrUndefined Nothing), "PostalCode": (NullOrUndefined Nothing), "PrefectureOrDistrict": (NullOrUndefined Nothing), "StateOrProvince": (NullOrUndefined Nothing), "Street1": (NullOrUndefined Nothing), "Street2": (NullOrUndefined Nothing), "Street3": (NullOrUndefined Nothing) }



newtype AddressId = AddressId String
derive instance newtypeAddressId :: Newtype AddressId _
derive instance repGenericAddressId :: Generic AddressId _
instance showAddressId :: Show AddressId where
  show = genericShow
instance decodeAddressId :: Decode AddressId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddressId :: Encode AddressId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AddressList = AddressList (Array Address)
derive instance newtypeAddressList :: Newtype AddressList _
derive instance repGenericAddressList :: Generic AddressList _
instance showAddressList :: Show AddressList where
  show = genericShow
instance decodeAddressList :: Decode AddressList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddressList :: Encode AddressList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CancelClusterRequest = CancelClusterRequest 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeCancelClusterRequest :: Newtype CancelClusterRequest _
derive instance repGenericCancelClusterRequest :: Generic CancelClusterRequest _
instance showCancelClusterRequest :: Show CancelClusterRequest where
  show = genericShow
instance decodeCancelClusterRequest :: Decode CancelClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelClusterRequest :: Encode CancelClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showCancelClusterResult :: Show CancelClusterResult where
  show = genericShow
instance decodeCancelClusterResult :: Decode CancelClusterResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelClusterResult :: Encode CancelClusterResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CancelJobRequest = CancelJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeCancelJobRequest :: Newtype CancelJobRequest _
derive instance repGenericCancelJobRequest :: Generic CancelJobRequest _
instance showCancelJobRequest :: Show CancelJobRequest where
  show = genericShow
instance decodeCancelJobRequest :: Decode CancelJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelJobRequest :: Encode CancelJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showCancelJobResult :: Show CancelJobResult where
  show = genericShow
instance decodeCancelJobResult :: Decode CancelJobResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelJobResult :: Encode CancelJobResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClusterId = ClusterId String
derive instance newtypeClusterId :: Newtype ClusterId _
derive instance repGenericClusterId :: Generic ClusterId _
instance showClusterId :: Show ClusterId where
  show = genericShow
instance decodeClusterId :: Decode ClusterId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterId :: Encode ClusterId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>
newtype ClusterLimitExceededException = ClusterLimitExceededException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeClusterLimitExceededException :: Newtype ClusterLimitExceededException _
derive instance repGenericClusterLimitExceededException :: Generic ClusterLimitExceededException _
instance showClusterLimitExceededException :: Show ClusterLimitExceededException where
  show = genericShow
instance decodeClusterLimitExceededException :: Decode ClusterLimitExceededException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterLimitExceededException :: Encode ClusterLimitExceededException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterLimitExceededException from required parameters
newClusterLimitExceededException :: ClusterLimitExceededException
newClusterLimitExceededException  = ClusterLimitExceededException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ClusterLimitExceededException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterLimitExceededException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ClusterLimitExceededException
newClusterLimitExceededException'  customize = (ClusterLimitExceededException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains a cluster's state, a cluster's ID, and other important information.</p>
newtype ClusterListEntry = ClusterListEntry 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (String)
  , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeClusterListEntry :: Newtype ClusterListEntry _
derive instance repGenericClusterListEntry :: Generic ClusterListEntry _
instance showClusterListEntry :: Show ClusterListEntry where
  show = genericShow
instance decodeClusterListEntry :: Decode ClusterListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterListEntry :: Encode ClusterListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterListEntry from required parameters
newClusterListEntry :: ClusterListEntry
newClusterListEntry  = ClusterListEntry { "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }

-- | Constructs ClusterListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterListEntry' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined.NullOrUndefined (String) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined.NullOrUndefined (String) } ) -> ClusterListEntry
newClusterListEntry'  customize = (ClusterListEntry <<< customize) { "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing) }



newtype ClusterListEntryList = ClusterListEntryList (Array ClusterListEntry)
derive instance newtypeClusterListEntryList :: Newtype ClusterListEntryList _
derive instance repGenericClusterListEntryList :: Generic ClusterListEntryList _
instance showClusterListEntryList :: Show ClusterListEntryList where
  show = genericShow
instance decodeClusterListEntryList :: Decode ClusterListEntryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterListEntryList :: Encode ClusterListEntryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains metadata about a specific cluster.</p>
newtype ClusterMetadata = ClusterMetadata 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN)
  , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState)
  , "JobType" :: NullOrUndefined.NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeClusterMetadata :: Newtype ClusterMetadata _
derive instance repGenericClusterMetadata :: Generic ClusterMetadata _
instance showClusterMetadata :: Show ClusterMetadata where
  show = genericShow
instance decodeClusterMetadata :: Decode ClusterMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterMetadata :: Encode ClusterMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterMetadata from required parameters
newClusterMetadata :: ClusterMetadata
newClusterMetadata  = ClusterMetadata { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs ClusterMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterMetadata' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "ClusterState" :: NullOrUndefined.NullOrUndefined (ClusterState) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> ClusterMetadata
newClusterMetadata'  customize = (ClusterMetadata <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "ClusterState": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype ClusterState = ClusterState String
derive instance newtypeClusterState :: Newtype ClusterState _
derive instance repGenericClusterState :: Generic ClusterState _
instance showClusterState :: Show ClusterState where
  show = genericShow
instance decodeClusterState :: Decode ClusterState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterState :: Encode ClusterState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAddressRequest = CreateAddressRequest 
  { "Address" :: (Address)
  }
derive instance newtypeCreateAddressRequest :: Newtype CreateAddressRequest _
derive instance repGenericCreateAddressRequest :: Generic CreateAddressRequest _
instance showCreateAddressRequest :: Show CreateAddressRequest where
  show = genericShow
instance decodeCreateAddressRequest :: Decode CreateAddressRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAddressRequest :: Encode CreateAddressRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAddressRequest from required parameters
newCreateAddressRequest :: Address -> CreateAddressRequest
newCreateAddressRequest _Address = CreateAddressRequest { "Address": _Address }

-- | Constructs CreateAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAddressRequest' :: Address -> ( { "Address" :: (Address) } -> {"Address" :: (Address) } ) -> CreateAddressRequest
newCreateAddressRequest' _Address customize = (CreateAddressRequest <<< customize) { "Address": _Address }



newtype CreateAddressResult = CreateAddressResult 
  { "AddressId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCreateAddressResult :: Newtype CreateAddressResult _
derive instance repGenericCreateAddressResult :: Generic CreateAddressResult _
instance showCreateAddressResult :: Show CreateAddressResult where
  show = genericShow
instance decodeCreateAddressResult :: Decode CreateAddressResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAddressResult :: Encode CreateAddressResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAddressResult from required parameters
newCreateAddressResult :: CreateAddressResult
newCreateAddressResult  = CreateAddressResult { "AddressId": (NullOrUndefined Nothing) }

-- | Constructs CreateAddressResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAddressResult' :: ( { "AddressId" :: NullOrUndefined.NullOrUndefined (String) } -> {"AddressId" :: NullOrUndefined.NullOrUndefined (String) } ) -> CreateAddressResult
newCreateAddressResult'  customize = (CreateAddressResult <<< customize) { "AddressId": (NullOrUndefined Nothing) }



newtype CreateClusterRequest = CreateClusterRequest 
  { "JobType" :: (JobType)
  , "Resources" :: (JobResource)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "AddressId" :: (AddressId)
  , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: (RoleARN)
  , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType)
  , "ShippingOption" :: (ShippingOption)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where
  show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> CreateClusterRequest
newCreateClusterRequest _AddressId _JobType _Resources _RoleARN _ShippingOption = CreateClusterRequest { "AddressId": _AddressId, "JobType": _JobType, "Resources": _Resources, "RoleARN": _RoleARN, "ShippingOption": _ShippingOption, "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> ( { "JobType" :: (JobType) , "Resources" :: (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "AddressId" :: (AddressId) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: (RoleARN) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "ShippingOption" :: (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"JobType" :: (JobType) , "Resources" :: (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "AddressId" :: (AddressId) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: (RoleARN) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "ShippingOption" :: (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> CreateClusterRequest
newCreateClusterRequest' _AddressId _JobType _Resources _RoleARN _ShippingOption customize = (CreateClusterRequest <<< customize) { "AddressId": _AddressId, "JobType": _JobType, "Resources": _Resources, "RoleARN": _RoleARN, "ShippingOption": _ShippingOption, "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype CreateClusterResult = CreateClusterResult 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId)
  }
derive instance newtypeCreateClusterResult :: Newtype CreateClusterResult _
derive instance repGenericCreateClusterResult :: Generic CreateClusterResult _
instance showCreateClusterResult :: Show CreateClusterResult where
  show = genericShow
instance decodeCreateClusterResult :: Decode CreateClusterResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateClusterResult :: Encode CreateClusterResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateClusterResult from required parameters
newCreateClusterResult :: CreateClusterResult
newCreateClusterResult  = CreateClusterResult { "ClusterId": (NullOrUndefined Nothing) }

-- | Constructs CreateClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResult' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) } ) -> CreateClusterResult
newCreateClusterResult'  customize = (CreateClusterResult <<< customize) { "ClusterId": (NullOrUndefined Nothing) }



newtype CreateJobRequest = CreateJobRequest 
  { "JobType" :: NullOrUndefined.NullOrUndefined (JobType)
  , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN)
  , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity)
  , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId)
  , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeCreateJobRequest :: Newtype CreateJobRequest _
derive instance repGenericCreateJobRequest :: Generic CreateJobRequest _
instance showCreateJobRequest :: Show CreateJobRequest where
  show = genericShow
instance decodeCreateJobRequest :: Decode CreateJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateJobRequest :: Encode CreateJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateJobRequest from required parameters
newCreateJobRequest :: CreateJobRequest
newCreateJobRequest  = CreateJobRequest { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs CreateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobRequest' :: ( { "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> CreateJobRequest
newCreateJobRequest'  customize = (CreateJobRequest <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype CreateJobResult = CreateJobResult 
  { "JobId" :: NullOrUndefined.NullOrUndefined (JobId)
  }
derive instance newtypeCreateJobResult :: Newtype CreateJobResult _
derive instance repGenericCreateJobResult :: Generic CreateJobResult _
instance showCreateJobResult :: Show CreateJobResult where
  show = genericShow
instance decodeCreateJobResult :: Decode CreateJobResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateJobResult :: Encode CreateJobResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateJobResult from required parameters
newCreateJobResult :: CreateJobResult
newCreateJobResult  = CreateJobResult { "JobId": (NullOrUndefined Nothing) }

-- | Constructs CreateJobResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateJobResult' :: ( { "JobId" :: NullOrUndefined.NullOrUndefined (JobId) } -> {"JobId" :: NullOrUndefined.NullOrUndefined (JobId) } ) -> CreateJobResult
newCreateJobResult'  customize = (CreateJobResult <<< customize) { "JobId": (NullOrUndefined Nothing) }



-- | <p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>
newtype DataTransfer = DataTransfer 
  { "BytesTransferred" :: NullOrUndefined.NullOrUndefined (Number)
  , "ObjectsTransferred" :: NullOrUndefined.NullOrUndefined (Number)
  , "TotalBytes" :: NullOrUndefined.NullOrUndefined (Number)
  , "TotalObjects" :: NullOrUndefined.NullOrUndefined (Number)
  }
derive instance newtypeDataTransfer :: Newtype DataTransfer _
derive instance repGenericDataTransfer :: Generic DataTransfer _
instance showDataTransfer :: Show DataTransfer where
  show = genericShow
instance decodeDataTransfer :: Decode DataTransfer where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDataTransfer :: Encode DataTransfer where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DataTransfer from required parameters
newDataTransfer :: DataTransfer
newDataTransfer  = DataTransfer { "BytesTransferred": (NullOrUndefined Nothing), "ObjectsTransferred": (NullOrUndefined Nothing), "TotalBytes": (NullOrUndefined Nothing), "TotalObjects": (NullOrUndefined Nothing) }

-- | Constructs DataTransfer's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataTransfer' :: ( { "BytesTransferred" :: NullOrUndefined.NullOrUndefined (Number) , "ObjectsTransferred" :: NullOrUndefined.NullOrUndefined (Number) , "TotalBytes" :: NullOrUndefined.NullOrUndefined (Number) , "TotalObjects" :: NullOrUndefined.NullOrUndefined (Number) } -> {"BytesTransferred" :: NullOrUndefined.NullOrUndefined (Number) , "ObjectsTransferred" :: NullOrUndefined.NullOrUndefined (Number) , "TotalBytes" :: NullOrUndefined.NullOrUndefined (Number) , "TotalObjects" :: NullOrUndefined.NullOrUndefined (Number) } ) -> DataTransfer
newDataTransfer'  customize = (DataTransfer <<< customize) { "BytesTransferred": (NullOrUndefined Nothing), "ObjectsTransferred": (NullOrUndefined Nothing), "TotalBytes": (NullOrUndefined Nothing), "TotalObjects": (NullOrUndefined Nothing) }



newtype DescribeAddressRequest = DescribeAddressRequest 
  { "AddressId" :: (AddressId)
  }
derive instance newtypeDescribeAddressRequest :: Newtype DescribeAddressRequest _
derive instance repGenericDescribeAddressRequest :: Generic DescribeAddressRequest _
instance showDescribeAddressRequest :: Show DescribeAddressRequest where
  show = genericShow
instance decodeDescribeAddressRequest :: Decode DescribeAddressRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAddressRequest :: Encode DescribeAddressRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAddressRequest from required parameters
newDescribeAddressRequest :: AddressId -> DescribeAddressRequest
newDescribeAddressRequest _AddressId = DescribeAddressRequest { "AddressId": _AddressId }

-- | Constructs DescribeAddressRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressRequest' :: AddressId -> ( { "AddressId" :: (AddressId) } -> {"AddressId" :: (AddressId) } ) -> DescribeAddressRequest
newDescribeAddressRequest' _AddressId customize = (DescribeAddressRequest <<< customize) { "AddressId": _AddressId }



newtype DescribeAddressResult = DescribeAddressResult 
  { "Address" :: NullOrUndefined.NullOrUndefined (Address)
  }
derive instance newtypeDescribeAddressResult :: Newtype DescribeAddressResult _
derive instance repGenericDescribeAddressResult :: Generic DescribeAddressResult _
instance showDescribeAddressResult :: Show DescribeAddressResult where
  show = genericShow
instance decodeDescribeAddressResult :: Decode DescribeAddressResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAddressResult :: Encode DescribeAddressResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAddressResult from required parameters
newDescribeAddressResult :: DescribeAddressResult
newDescribeAddressResult  = DescribeAddressResult { "Address": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressResult' :: ( { "Address" :: NullOrUndefined.NullOrUndefined (Address) } -> {"Address" :: NullOrUndefined.NullOrUndefined (Address) } ) -> DescribeAddressResult
newDescribeAddressResult'  customize = (DescribeAddressResult <<< customize) { "Address": (NullOrUndefined Nothing) }



newtype DescribeAddressesRequest = DescribeAddressesRequest 
  { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeAddressesRequest :: Newtype DescribeAddressesRequest _
derive instance repGenericDescribeAddressesRequest :: Generic DescribeAddressesRequest _
instance showDescribeAddressesRequest :: Show DescribeAddressesRequest where
  show = genericShow
instance decodeDescribeAddressesRequest :: Decode DescribeAddressesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAddressesRequest :: Encode DescribeAddressesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAddressesRequest from required parameters
newDescribeAddressesRequest :: DescribeAddressesRequest
newDescribeAddressesRequest  = DescribeAddressesRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressesRequest' :: ( { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeAddressesRequest
newDescribeAddressesRequest'  customize = (DescribeAddressesRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeAddressesResult = DescribeAddressesResult 
  { "Addresses" :: NullOrUndefined.NullOrUndefined (AddressList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeDescribeAddressesResult :: Newtype DescribeAddressesResult _
derive instance repGenericDescribeAddressesResult :: Generic DescribeAddressesResult _
instance showDescribeAddressesResult :: Show DescribeAddressesResult where
  show = genericShow
instance decodeDescribeAddressesResult :: Decode DescribeAddressesResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAddressesResult :: Encode DescribeAddressesResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAddressesResult from required parameters
newDescribeAddressesResult :: DescribeAddressesResult
newDescribeAddressesResult  = DescribeAddressesResult { "Addresses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs DescribeAddressesResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAddressesResult' :: ( { "Addresses" :: NullOrUndefined.NullOrUndefined (AddressList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"Addresses" :: NullOrUndefined.NullOrUndefined (AddressList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> DescribeAddressesResult
newDescribeAddressesResult'  customize = (DescribeAddressesResult <<< customize) { "Addresses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype DescribeClusterRequest = DescribeClusterRequest 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeDescribeClusterRequest :: Newtype DescribeClusterRequest _
derive instance repGenericDescribeClusterRequest :: Generic DescribeClusterRequest _
instance showDescribeClusterRequest :: Show DescribeClusterRequest where
  show = genericShow
instance decodeDescribeClusterRequest :: Decode DescribeClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeClusterRequest :: Encode DescribeClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeClusterRequest from required parameters
newDescribeClusterRequest :: ClusterId -> DescribeClusterRequest
newDescribeClusterRequest _ClusterId = DescribeClusterRequest { "ClusterId": _ClusterId }

-- | Constructs DescribeClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> DescribeClusterRequest
newDescribeClusterRequest' _ClusterId customize = (DescribeClusterRequest <<< customize) { "ClusterId": _ClusterId }



newtype DescribeClusterResult = DescribeClusterResult 
  { "ClusterMetadata" :: NullOrUndefined.NullOrUndefined (ClusterMetadata)
  }
derive instance newtypeDescribeClusterResult :: Newtype DescribeClusterResult _
derive instance repGenericDescribeClusterResult :: Generic DescribeClusterResult _
instance showDescribeClusterResult :: Show DescribeClusterResult where
  show = genericShow
instance decodeDescribeClusterResult :: Decode DescribeClusterResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeClusterResult :: Encode DescribeClusterResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeClusterResult from required parameters
newDescribeClusterResult :: DescribeClusterResult
newDescribeClusterResult  = DescribeClusterResult { "ClusterMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeClusterResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterResult' :: ( { "ClusterMetadata" :: NullOrUndefined.NullOrUndefined (ClusterMetadata) } -> {"ClusterMetadata" :: NullOrUndefined.NullOrUndefined (ClusterMetadata) } ) -> DescribeClusterResult
newDescribeClusterResult'  customize = (DescribeClusterResult <<< customize) { "ClusterMetadata": (NullOrUndefined Nothing) }



newtype DescribeJobRequest = DescribeJobRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeDescribeJobRequest :: Newtype DescribeJobRequest _
derive instance repGenericDescribeJobRequest :: Generic DescribeJobRequest _
instance showDescribeJobRequest :: Show DescribeJobRequest where
  show = genericShow
instance decodeDescribeJobRequest :: Decode DescribeJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobRequest :: Encode DescribeJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobRequest from required parameters
newDescribeJobRequest :: JobId -> DescribeJobRequest
newDescribeJobRequest _JobId = DescribeJobRequest { "JobId": _JobId }

-- | Constructs DescribeJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> DescribeJobRequest
newDescribeJobRequest' _JobId customize = (DescribeJobRequest <<< customize) { "JobId": _JobId }



newtype DescribeJobResult = DescribeJobResult 
  { "JobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadata)
  , "SubJobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadataList)
  }
derive instance newtypeDescribeJobResult :: Newtype DescribeJobResult _
derive instance repGenericDescribeJobResult :: Generic DescribeJobResult _
instance showDescribeJobResult :: Show DescribeJobResult where
  show = genericShow
instance decodeDescribeJobResult :: Decode DescribeJobResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobResult :: Encode DescribeJobResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobResult from required parameters
newDescribeJobResult :: DescribeJobResult
newDescribeJobResult  = DescribeJobResult { "JobMetadata": (NullOrUndefined Nothing), "SubJobMetadata": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobResult' :: ( { "JobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadata) , "SubJobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadataList) } -> {"JobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadata) , "SubJobMetadata" :: NullOrUndefined.NullOrUndefined (JobMetadataList) } ) -> DescribeJobResult
newDescribeJobResult'  customize = (DescribeJobResult <<< customize) { "JobMetadata": (NullOrUndefined Nothing), "SubJobMetadata": (NullOrUndefined Nothing) }



-- | <p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>
newtype EventTriggerDefinition = EventTriggerDefinition 
  { "EventResourceARN" :: NullOrUndefined.NullOrUndefined (ResourceARN)
  }
derive instance newtypeEventTriggerDefinition :: Newtype EventTriggerDefinition _
derive instance repGenericEventTriggerDefinition :: Generic EventTriggerDefinition _
instance showEventTriggerDefinition :: Show EventTriggerDefinition where
  show = genericShow
instance decodeEventTriggerDefinition :: Decode EventTriggerDefinition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEventTriggerDefinition :: Encode EventTriggerDefinition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EventTriggerDefinition from required parameters
newEventTriggerDefinition :: EventTriggerDefinition
newEventTriggerDefinition  = EventTriggerDefinition { "EventResourceARN": (NullOrUndefined Nothing) }

-- | Constructs EventTriggerDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventTriggerDefinition' :: ( { "EventResourceARN" :: NullOrUndefined.NullOrUndefined (ResourceARN) } -> {"EventResourceARN" :: NullOrUndefined.NullOrUndefined (ResourceARN) } ) -> EventTriggerDefinition
newEventTriggerDefinition'  customize = (EventTriggerDefinition <<< customize) { "EventResourceARN": (NullOrUndefined Nothing) }



newtype EventTriggerDefinitionList = EventTriggerDefinitionList (Array EventTriggerDefinition)
derive instance newtypeEventTriggerDefinitionList :: Newtype EventTriggerDefinitionList _
derive instance repGenericEventTriggerDefinitionList :: Generic EventTriggerDefinitionList _
instance showEventTriggerDefinitionList :: Show EventTriggerDefinitionList where
  show = genericShow
instance decodeEventTriggerDefinitionList :: Decode EventTriggerDefinitionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEventTriggerDefinitionList :: Encode EventTriggerDefinitionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetJobManifestRequest = GetJobManifestRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeGetJobManifestRequest :: Newtype GetJobManifestRequest _
derive instance repGenericGetJobManifestRequest :: Generic GetJobManifestRequest _
instance showGetJobManifestRequest :: Show GetJobManifestRequest where
  show = genericShow
instance decodeGetJobManifestRequest :: Decode GetJobManifestRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetJobManifestRequest :: Encode GetJobManifestRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetJobManifestRequest from required parameters
newGetJobManifestRequest :: JobId -> GetJobManifestRequest
newGetJobManifestRequest _JobId = GetJobManifestRequest { "JobId": _JobId }

-- | Constructs GetJobManifestRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobManifestRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> GetJobManifestRequest
newGetJobManifestRequest' _JobId customize = (GetJobManifestRequest <<< customize) { "JobId": _JobId }



newtype GetJobManifestResult = GetJobManifestResult 
  { "ManifestURI" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeGetJobManifestResult :: Newtype GetJobManifestResult _
derive instance repGenericGetJobManifestResult :: Generic GetJobManifestResult _
instance showGetJobManifestResult :: Show GetJobManifestResult where
  show = genericShow
instance decodeGetJobManifestResult :: Decode GetJobManifestResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetJobManifestResult :: Encode GetJobManifestResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetJobManifestResult from required parameters
newGetJobManifestResult :: GetJobManifestResult
newGetJobManifestResult  = GetJobManifestResult { "ManifestURI": (NullOrUndefined Nothing) }

-- | Constructs GetJobManifestResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobManifestResult' :: ( { "ManifestURI" :: NullOrUndefined.NullOrUndefined (String) } -> {"ManifestURI" :: NullOrUndefined.NullOrUndefined (String) } ) -> GetJobManifestResult
newGetJobManifestResult'  customize = (GetJobManifestResult <<< customize) { "ManifestURI": (NullOrUndefined Nothing) }



newtype GetJobUnlockCodeRequest = GetJobUnlockCodeRequest 
  { "JobId" :: (JobId)
  }
derive instance newtypeGetJobUnlockCodeRequest :: Newtype GetJobUnlockCodeRequest _
derive instance repGenericGetJobUnlockCodeRequest :: Generic GetJobUnlockCodeRequest _
instance showGetJobUnlockCodeRequest :: Show GetJobUnlockCodeRequest where
  show = genericShow
instance decodeGetJobUnlockCodeRequest :: Decode GetJobUnlockCodeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetJobUnlockCodeRequest :: Encode GetJobUnlockCodeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetJobUnlockCodeRequest from required parameters
newGetJobUnlockCodeRequest :: JobId -> GetJobUnlockCodeRequest
newGetJobUnlockCodeRequest _JobId = GetJobUnlockCodeRequest { "JobId": _JobId }

-- | Constructs GetJobUnlockCodeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobUnlockCodeRequest' :: JobId -> ( { "JobId" :: (JobId) } -> {"JobId" :: (JobId) } ) -> GetJobUnlockCodeRequest
newGetJobUnlockCodeRequest' _JobId customize = (GetJobUnlockCodeRequest <<< customize) { "JobId": _JobId }



newtype GetJobUnlockCodeResult = GetJobUnlockCodeResult 
  { "UnlockCode" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeGetJobUnlockCodeResult :: Newtype GetJobUnlockCodeResult _
derive instance repGenericGetJobUnlockCodeResult :: Generic GetJobUnlockCodeResult _
instance showGetJobUnlockCodeResult :: Show GetJobUnlockCodeResult where
  show = genericShow
instance decodeGetJobUnlockCodeResult :: Decode GetJobUnlockCodeResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetJobUnlockCodeResult :: Encode GetJobUnlockCodeResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetJobUnlockCodeResult from required parameters
newGetJobUnlockCodeResult :: GetJobUnlockCodeResult
newGetJobUnlockCodeResult  = GetJobUnlockCodeResult { "UnlockCode": (NullOrUndefined Nothing) }

-- | Constructs GetJobUnlockCodeResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetJobUnlockCodeResult' :: ( { "UnlockCode" :: NullOrUndefined.NullOrUndefined (String) } -> {"UnlockCode" :: NullOrUndefined.NullOrUndefined (String) } ) -> GetJobUnlockCodeResult
newGetJobUnlockCodeResult'  customize = (GetJobUnlockCodeResult <<< customize) { "UnlockCode": (NullOrUndefined Nothing) }



newtype GetSnowballUsageRequest = GetSnowballUsageRequest Types.NoArguments
derive instance newtypeGetSnowballUsageRequest :: Newtype GetSnowballUsageRequest _
derive instance repGenericGetSnowballUsageRequest :: Generic GetSnowballUsageRequest _
instance showGetSnowballUsageRequest :: Show GetSnowballUsageRequest where
  show = genericShow
instance decodeGetSnowballUsageRequest :: Decode GetSnowballUsageRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSnowballUsageRequest :: Encode GetSnowballUsageRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype GetSnowballUsageResult = GetSnowballUsageResult 
  { "SnowballLimit" :: NullOrUndefined.NullOrUndefined (Int)
  , "SnowballsInUse" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeGetSnowballUsageResult :: Newtype GetSnowballUsageResult _
derive instance repGenericGetSnowballUsageResult :: Generic GetSnowballUsageResult _
instance showGetSnowballUsageResult :: Show GetSnowballUsageResult where
  show = genericShow
instance decodeGetSnowballUsageResult :: Decode GetSnowballUsageResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGetSnowballUsageResult :: Encode GetSnowballUsageResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs GetSnowballUsageResult from required parameters
newGetSnowballUsageResult :: GetSnowballUsageResult
newGetSnowballUsageResult  = GetSnowballUsageResult { "SnowballLimit": (NullOrUndefined Nothing), "SnowballsInUse": (NullOrUndefined Nothing) }

-- | Constructs GetSnowballUsageResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetSnowballUsageResult' :: ( { "SnowballLimit" :: NullOrUndefined.NullOrUndefined (Int) , "SnowballsInUse" :: NullOrUndefined.NullOrUndefined (Int) } -> {"SnowballLimit" :: NullOrUndefined.NullOrUndefined (Int) , "SnowballsInUse" :: NullOrUndefined.NullOrUndefined (Int) } ) -> GetSnowballUsageResult
newGetSnowballUsageResult'  customize = (GetSnowballUsageResult <<< customize) { "SnowballLimit": (NullOrUndefined Nothing), "SnowballsInUse": (NullOrUndefined Nothing) }



-- | <p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>
newtype InvalidAddressException = InvalidAddressException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidAddressException :: Newtype InvalidAddressException _
derive instance repGenericInvalidAddressException :: Generic InvalidAddressException _
instance showInvalidAddressException :: Show InvalidAddressException where
  show = genericShow
instance decodeInvalidAddressException :: Decode InvalidAddressException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidAddressException :: Encode InvalidAddressException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidAddressException from required parameters
newInvalidAddressException :: InvalidAddressException
newInvalidAddressException  = InvalidAddressException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidAddressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidAddressException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidAddressException
newInvalidAddressException'  customize = (InvalidAddressException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>
newtype InvalidInputCombinationException = InvalidInputCombinationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidInputCombinationException :: Newtype InvalidInputCombinationException _
derive instance repGenericInvalidInputCombinationException :: Generic InvalidInputCombinationException _
instance showInvalidInputCombinationException :: Show InvalidInputCombinationException where
  show = genericShow
instance decodeInvalidInputCombinationException :: Decode InvalidInputCombinationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputCombinationException :: Encode InvalidInputCombinationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInputCombinationException from required parameters
newInvalidInputCombinationException :: InvalidInputCombinationException
newInvalidInputCombinationException  = InvalidInputCombinationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputCombinationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputCombinationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidInputCombinationException
newInvalidInputCombinationException'  customize = (InvalidInputCombinationException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>
newtype InvalidJobStateException = InvalidJobStateException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidJobStateException :: Newtype InvalidJobStateException _
derive instance repGenericInvalidJobStateException :: Generic InvalidJobStateException _
instance showInvalidJobStateException :: Show InvalidJobStateException where
  show = genericShow
instance decodeInvalidJobStateException :: Decode InvalidJobStateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidJobStateException :: Encode InvalidJobStateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidJobStateException from required parameters
newInvalidJobStateException :: InvalidJobStateException
newInvalidJobStateException  = InvalidJobStateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidJobStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidJobStateException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidJobStateException
newInvalidJobStateException'  customize = (InvalidJobStateException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>
newtype InvalidNextTokenException = InvalidNextTokenException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where
  show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidNextTokenException from required parameters
newInvalidNextTokenException :: InvalidNextTokenException
newInvalidNextTokenException  = InvalidNextTokenException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidNextTokenException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidNextTokenException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidNextTokenException
newInvalidNextTokenException'  customize = (InvalidNextTokenException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>
newtype InvalidResourceException = InvalidResourceException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInvalidResourceException :: Newtype InvalidResourceException _
derive instance repGenericInvalidResourceException :: Generic InvalidResourceException _
instance showInvalidResourceException :: Show InvalidResourceException where
  show = genericShow
instance decodeInvalidResourceException :: Decode InvalidResourceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidResourceException :: Encode InvalidResourceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidResourceException from required parameters
newInvalidResourceException :: InvalidResourceException
newInvalidResourceException  = InvalidResourceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidResourceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidResourceException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InvalidResourceException
newInvalidResourceException'  customize = (InvalidResourceException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype JobId = JobId String
derive instance newtypeJobId :: Newtype JobId _
derive instance repGenericJobId :: Generic JobId _
instance showJobId :: Show JobId where
  show = genericShow
instance decodeJobId :: Decode JobId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobId :: Encode JobId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>
newtype JobListEntry = JobListEntry 
  { "JobId" :: NullOrUndefined.NullOrUndefined (String)
  , "JobState" :: NullOrUndefined.NullOrUndefined (JobState)
  , "IsMaster" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "JobType" :: NullOrUndefined.NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeJobListEntry :: Newtype JobListEntry _
derive instance repGenericJobListEntry :: Generic JobListEntry _
instance showJobListEntry :: Show JobListEntry where
  show = genericShow
instance decodeJobListEntry :: Decode JobListEntry where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobListEntry :: Encode JobListEntry where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobListEntry from required parameters
newJobListEntry :: JobListEntry
newJobListEntry  = JobListEntry { "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsMaster": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs JobListEntry's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobListEntry' :: ( { "JobId" :: NullOrUndefined.NullOrUndefined (String) , "JobState" :: NullOrUndefined.NullOrUndefined (JobState) , "IsMaster" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined.NullOrUndefined (String) } -> {"JobId" :: NullOrUndefined.NullOrUndefined (String) , "JobState" :: NullOrUndefined.NullOrUndefined (JobState) , "IsMaster" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Description" :: NullOrUndefined.NullOrUndefined (String) } ) -> JobListEntry
newJobListEntry'  customize = (JobListEntry <<< customize) { "CreationDate": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "IsMaster": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype JobListEntryList = JobListEntryList (Array JobListEntry)
derive instance newtypeJobListEntryList :: Newtype JobListEntryList _
derive instance repGenericJobListEntryList :: Generic JobListEntryList _
instance showJobListEntryList :: Show JobListEntryList where
  show = genericShow
instance decodeJobListEntryList :: Decode JobListEntryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobListEntryList :: Encode JobListEntryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>
newtype JobLogs = JobLogs 
  { "JobCompletionReportURI" :: NullOrUndefined.NullOrUndefined (String)
  , "JobSuccessLogURI" :: NullOrUndefined.NullOrUndefined (String)
  , "JobFailureLogURI" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeJobLogs :: Newtype JobLogs _
derive instance repGenericJobLogs :: Generic JobLogs _
instance showJobLogs :: Show JobLogs where
  show = genericShow
instance decodeJobLogs :: Decode JobLogs where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobLogs :: Encode JobLogs where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobLogs from required parameters
newJobLogs :: JobLogs
newJobLogs  = JobLogs { "JobCompletionReportURI": (NullOrUndefined Nothing), "JobFailureLogURI": (NullOrUndefined Nothing), "JobSuccessLogURI": (NullOrUndefined Nothing) }

-- | Constructs JobLogs's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobLogs' :: ( { "JobCompletionReportURI" :: NullOrUndefined.NullOrUndefined (String) , "JobSuccessLogURI" :: NullOrUndefined.NullOrUndefined (String) , "JobFailureLogURI" :: NullOrUndefined.NullOrUndefined (String) } -> {"JobCompletionReportURI" :: NullOrUndefined.NullOrUndefined (String) , "JobSuccessLogURI" :: NullOrUndefined.NullOrUndefined (String) , "JobFailureLogURI" :: NullOrUndefined.NullOrUndefined (String) } ) -> JobLogs
newJobLogs'  customize = (JobLogs <<< customize) { "JobCompletionReportURI": (NullOrUndefined Nothing), "JobFailureLogURI": (NullOrUndefined Nothing), "JobSuccessLogURI": (NullOrUndefined Nothing) }



-- | <p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>
newtype JobMetadata = JobMetadata 
  { "JobId" :: NullOrUndefined.NullOrUndefined (String)
  , "JobState" :: NullOrUndefined.NullOrUndefined (JobState)
  , "JobType" :: NullOrUndefined.NullOrUndefined (JobType)
  , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType)
  , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN)
  , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "ShippingDetails" :: NullOrUndefined.NullOrUndefined (ShippingDetails)
  , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "DataTransferProgress" :: NullOrUndefined.NullOrUndefined (DataTransfer)
  , "JobLogInfo" :: NullOrUndefined.NullOrUndefined (JobLogs)
  , "ClusterId" :: NullOrUndefined.NullOrUndefined (String)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeJobMetadata :: Newtype JobMetadata _
derive instance repGenericJobMetadata :: Generic JobMetadata _
instance showJobMetadata :: Show JobMetadata where
  show = genericShow
instance decodeJobMetadata :: Decode JobMetadata where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobMetadata :: Encode JobMetadata where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobMetadata from required parameters
newJobMetadata :: JobMetadata
newJobMetadata  = JobMetadata { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DataTransferProgress": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobLogInfo": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingDetails": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }

-- | Constructs JobMetadata's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobMetadata' :: ( { "JobId" :: NullOrUndefined.NullOrUndefined (String) , "JobState" :: NullOrUndefined.NullOrUndefined (JobState) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingDetails" :: NullOrUndefined.NullOrUndefined (ShippingDetails) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "DataTransferProgress" :: NullOrUndefined.NullOrUndefined (DataTransfer) , "JobLogInfo" :: NullOrUndefined.NullOrUndefined (JobLogs) , "ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"JobId" :: NullOrUndefined.NullOrUndefined (String) , "JobState" :: NullOrUndefined.NullOrUndefined (JobState) , "JobType" :: NullOrUndefined.NullOrUndefined (JobType) , "SnowballType" :: NullOrUndefined.NullOrUndefined (SnowballType) , "CreationDate" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "KmsKeyARN" :: NullOrUndefined.NullOrUndefined (KmsKeyARN) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingDetails" :: NullOrUndefined.NullOrUndefined (ShippingDetails) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "DataTransferProgress" :: NullOrUndefined.NullOrUndefined (DataTransfer) , "JobLogInfo" :: NullOrUndefined.NullOrUndefined (JobLogs) , "ClusterId" :: NullOrUndefined.NullOrUndefined (String) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> JobMetadata
newJobMetadata'  customize = (JobMetadata <<< customize) { "AddressId": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "CreationDate": (NullOrUndefined Nothing), "DataTransferProgress": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "JobId": (NullOrUndefined Nothing), "JobLogInfo": (NullOrUndefined Nothing), "JobState": (NullOrUndefined Nothing), "JobType": (NullOrUndefined Nothing), "KmsKeyARN": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingDetails": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing), "SnowballType": (NullOrUndefined Nothing) }



newtype JobMetadataList = JobMetadataList (Array JobMetadata)
derive instance newtypeJobMetadataList :: Newtype JobMetadataList _
derive instance repGenericJobMetadataList :: Generic JobMetadataList _
instance showJobMetadataList :: Show JobMetadataList where
  show = genericShow
instance decodeJobMetadataList :: Decode JobMetadataList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobMetadataList :: Encode JobMetadataList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>
newtype JobResource = JobResource 
  { "S3Resources" :: NullOrUndefined.NullOrUndefined (S3ResourceList)
  , "LambdaResources" :: NullOrUndefined.NullOrUndefined (LambdaResourceList)
  }
derive instance newtypeJobResource :: Newtype JobResource _
derive instance repGenericJobResource :: Generic JobResource _
instance showJobResource :: Show JobResource where
  show = genericShow
instance decodeJobResource :: Decode JobResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobResource :: Encode JobResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobResource from required parameters
newJobResource :: JobResource
newJobResource  = JobResource { "LambdaResources": (NullOrUndefined Nothing), "S3Resources": (NullOrUndefined Nothing) }

-- | Constructs JobResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobResource' :: ( { "S3Resources" :: NullOrUndefined.NullOrUndefined (S3ResourceList) , "LambdaResources" :: NullOrUndefined.NullOrUndefined (LambdaResourceList) } -> {"S3Resources" :: NullOrUndefined.NullOrUndefined (S3ResourceList) , "LambdaResources" :: NullOrUndefined.NullOrUndefined (LambdaResourceList) } ) -> JobResource
newJobResource'  customize = (JobResource <<< customize) { "LambdaResources": (NullOrUndefined Nothing), "S3Resources": (NullOrUndefined Nothing) }



newtype JobState = JobState String
derive instance newtypeJobState :: Newtype JobState _
derive instance repGenericJobState :: Generic JobState _
instance showJobState :: Show JobState where
  show = genericShow
instance decodeJobState :: Decode JobState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobState :: Encode JobState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobStateList = JobStateList (Array JobState)
derive instance newtypeJobStateList :: Newtype JobStateList _
derive instance repGenericJobStateList :: Generic JobStateList _
instance showJobStateList :: Show JobStateList where
  show = genericShow
instance decodeJobStateList :: Decode JobStateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobStateList :: Encode JobStateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobType = JobType String
derive instance newtypeJobType :: Newtype JobType _
derive instance repGenericJobType :: Generic JobType _
instance showJobType :: Show JobType where
  show = genericShow
instance decodeJobType :: Decode JobType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobType :: Encode JobType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>
newtype KMSRequestFailedException = KMSRequestFailedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeKMSRequestFailedException :: Newtype KMSRequestFailedException _
derive instance repGenericKMSRequestFailedException :: Generic KMSRequestFailedException _
instance showKMSRequestFailedException :: Show KMSRequestFailedException where
  show = genericShow
instance decodeKMSRequestFailedException :: Decode KMSRequestFailedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKMSRequestFailedException :: Encode KMSRequestFailedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KMSRequestFailedException from required parameters
newKMSRequestFailedException :: KMSRequestFailedException
newKMSRequestFailedException  = KMSRequestFailedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs KMSRequestFailedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKMSRequestFailedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> KMSRequestFailedException
newKMSRequestFailedException'  customize = (KMSRequestFailedException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
newtype KeyRange = KeyRange 
  { "BeginMarker" :: NullOrUndefined.NullOrUndefined (String)
  , "EndMarker" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeKeyRange :: Newtype KeyRange _
derive instance repGenericKeyRange :: Generic KeyRange _
instance showKeyRange :: Show KeyRange where
  show = genericShow
instance decodeKeyRange :: Decode KeyRange where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyRange :: Encode KeyRange where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyRange from required parameters
newKeyRange :: KeyRange
newKeyRange  = KeyRange { "BeginMarker": (NullOrUndefined Nothing), "EndMarker": (NullOrUndefined Nothing) }

-- | Constructs KeyRange's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyRange' :: ( { "BeginMarker" :: NullOrUndefined.NullOrUndefined (String) , "EndMarker" :: NullOrUndefined.NullOrUndefined (String) } -> {"BeginMarker" :: NullOrUndefined.NullOrUndefined (String) , "EndMarker" :: NullOrUndefined.NullOrUndefined (String) } ) -> KeyRange
newKeyRange'  customize = (KeyRange <<< customize) { "BeginMarker": (NullOrUndefined Nothing), "EndMarker": (NullOrUndefined Nothing) }



newtype KmsKeyARN = KmsKeyARN String
derive instance newtypeKmsKeyARN :: Newtype KmsKeyARN _
derive instance repGenericKmsKeyARN :: Generic KmsKeyARN _
instance showKmsKeyARN :: Show KmsKeyARN where
  show = genericShow
instance decodeKmsKeyARN :: Decode KmsKeyARN where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKmsKeyARN :: Encode KmsKeyARN where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Identifies </p>
newtype LambdaResource = LambdaResource 
  { "LambdaArn" :: NullOrUndefined.NullOrUndefined (ResourceARN)
  , "EventTriggers" :: NullOrUndefined.NullOrUndefined (EventTriggerDefinitionList)
  }
derive instance newtypeLambdaResource :: Newtype LambdaResource _
derive instance repGenericLambdaResource :: Generic LambdaResource _
instance showLambdaResource :: Show LambdaResource where
  show = genericShow
instance decodeLambdaResource :: Decode LambdaResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaResource :: Encode LambdaResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs LambdaResource from required parameters
newLambdaResource :: LambdaResource
newLambdaResource  = LambdaResource { "EventTriggers": (NullOrUndefined Nothing), "LambdaArn": (NullOrUndefined Nothing) }

-- | Constructs LambdaResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLambdaResource' :: ( { "LambdaArn" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "EventTriggers" :: NullOrUndefined.NullOrUndefined (EventTriggerDefinitionList) } -> {"LambdaArn" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "EventTriggers" :: NullOrUndefined.NullOrUndefined (EventTriggerDefinitionList) } ) -> LambdaResource
newLambdaResource'  customize = (LambdaResource <<< customize) { "EventTriggers": (NullOrUndefined Nothing), "LambdaArn": (NullOrUndefined Nothing) }



newtype LambdaResourceList = LambdaResourceList (Array LambdaResource)
derive instance newtypeLambdaResourceList :: Newtype LambdaResourceList _
derive instance repGenericLambdaResourceList :: Generic LambdaResourceList _
instance showLambdaResourceList :: Show LambdaResourceList where
  show = genericShow
instance decodeLambdaResourceList :: Decode LambdaResourceList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeLambdaResourceList :: Encode LambdaResourceList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ListClusterJobsRequest = ListClusterJobsRequest 
  { "ClusterId" :: (ClusterId)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListClusterJobsRequest :: Newtype ListClusterJobsRequest _
derive instance repGenericListClusterJobsRequest :: Generic ListClusterJobsRequest _
instance showListClusterJobsRequest :: Show ListClusterJobsRequest where
  show = genericShow
instance decodeListClusterJobsRequest :: Decode ListClusterJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClusterJobsRequest :: Encode ListClusterJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClusterJobsRequest from required parameters
newListClusterJobsRequest :: ClusterId -> ListClusterJobsRequest
newListClusterJobsRequest _ClusterId = ListClusterJobsRequest { "ClusterId": _ClusterId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClusterJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClusterJobsRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"ClusterId" :: (ClusterId) , "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListClusterJobsRequest
newListClusterJobsRequest' _ClusterId customize = (ListClusterJobsRequest <<< customize) { "ClusterId": _ClusterId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClusterJobsResult = ListClusterJobsResult 
  { "JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListClusterJobsResult :: Newtype ListClusterJobsResult _
derive instance repGenericListClusterJobsResult :: Generic ListClusterJobsResult _
instance showListClusterJobsResult :: Show ListClusterJobsResult where
  show = genericShow
instance decodeListClusterJobsResult :: Decode ListClusterJobsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClusterJobsResult :: Encode ListClusterJobsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClusterJobsResult from required parameters
newListClusterJobsResult :: ListClusterJobsResult
newListClusterJobsResult  = ListClusterJobsResult { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClusterJobsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClusterJobsResult' :: ( { "JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListClusterJobsResult
newListClusterJobsResult'  customize = (ListClusterJobsResult <<< customize) { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClustersRequest = ListClustersRequest 
  { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListClustersRequest :: Newtype ListClustersRequest _
derive instance repGenericListClustersRequest :: Generic ListClustersRequest _
instance showListClustersRequest :: Show ListClustersRequest where
  show = genericShow
instance decodeListClustersRequest :: Decode ListClustersRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClustersRequest :: Encode ListClustersRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClustersRequest from required parameters
newListClustersRequest :: ListClustersRequest
newListClustersRequest  = ListClustersRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersRequest' :: ( { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListClustersRequest
newListClustersRequest'  customize = (ListClustersRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListClustersResult = ListClustersResult 
  { "ClusterListEntries" :: NullOrUndefined.NullOrUndefined (ClusterListEntryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListClustersResult :: Newtype ListClustersResult _
derive instance repGenericListClustersResult :: Generic ListClustersResult _
instance showListClustersResult :: Show ListClustersResult where
  show = genericShow
instance decodeListClustersResult :: Decode ListClustersResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClustersResult :: Encode ListClustersResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClustersResult from required parameters
newListClustersResult :: ListClustersResult
newListClustersResult  = ListClustersResult { "ClusterListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListClustersResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersResult' :: ( { "ClusterListEntries" :: NullOrUndefined.NullOrUndefined (ClusterListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"ClusterListEntries" :: NullOrUndefined.NullOrUndefined (ClusterListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListClustersResult
newListClustersResult'  customize = (ListClustersResult <<< customize) { "ClusterListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListJobsRequest = ListJobsRequest 
  { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListJobsRequest :: Newtype ListJobsRequest _
derive instance repGenericListJobsRequest :: Generic ListJobsRequest _
instance showListJobsRequest :: Show ListJobsRequest where
  show = genericShow
instance decodeListJobsRequest :: Decode ListJobsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListJobsRequest :: Encode ListJobsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListJobsRequest from required parameters
newListJobsRequest :: ListJobsRequest
newListJobsRequest  = ListJobsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsRequest' :: ( { "MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"MaxResults" :: NullOrUndefined.NullOrUndefined (ListLimit) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListJobsRequest
newListJobsRequest'  customize = (ListJobsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListJobsResult = ListJobsResult 
  { "JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeListJobsResult :: Newtype ListJobsResult _
derive instance repGenericListJobsResult :: Generic ListJobsResult _
instance showListJobsResult :: Show ListJobsResult where
  show = genericShow
instance decodeListJobsResult :: Decode ListJobsResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListJobsResult :: Encode ListJobsResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListJobsResult from required parameters
newListJobsResult :: ListJobsResult
newListJobsResult  = ListJobsResult { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListJobsResult's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListJobsResult' :: ( { "JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } -> {"JobListEntries" :: NullOrUndefined.NullOrUndefined (JobListEntryList) , "NextToken" :: NullOrUndefined.NullOrUndefined (String) } ) -> ListJobsResult
newListJobsResult'  customize = (ListJobsResult <<< customize) { "JobListEntries": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListLimit = ListLimit Int
derive instance newtypeListLimit :: Newtype ListLimit _
derive instance repGenericListLimit :: Generic ListLimit _
instance showListLimit :: Show ListLimit where
  show = genericShow
instance decodeListLimit :: Decode ListLimit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListLimit :: Encode ListLimit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>
newtype Notification = Notification 
  { "SnsTopicARN" :: NullOrUndefined.NullOrUndefined (SnsTopicARN)
  , "JobStatesToNotify" :: NullOrUndefined.NullOrUndefined (JobStateList)
  , "NotifyAll" :: NullOrUndefined.NullOrUndefined (Boolean)
  }
derive instance newtypeNotification :: Newtype Notification _
derive instance repGenericNotification :: Generic Notification _
instance showNotification :: Show Notification where
  show = genericShow
instance decodeNotification :: Decode Notification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNotification :: Encode Notification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Notification from required parameters
newNotification :: Notification
newNotification  = Notification { "JobStatesToNotify": (NullOrUndefined Nothing), "NotifyAll": (NullOrUndefined Nothing), "SnsTopicARN": (NullOrUndefined Nothing) }

-- | Constructs Notification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newNotification' :: ( { "SnsTopicARN" :: NullOrUndefined.NullOrUndefined (SnsTopicARN) , "JobStatesToNotify" :: NullOrUndefined.NullOrUndefined (JobStateList) , "NotifyAll" :: NullOrUndefined.NullOrUndefined (Boolean) } -> {"SnsTopicARN" :: NullOrUndefined.NullOrUndefined (SnsTopicARN) , "JobStatesToNotify" :: NullOrUndefined.NullOrUndefined (JobStateList) , "NotifyAll" :: NullOrUndefined.NullOrUndefined (Boolean) } ) -> Notification
newNotification'  customize = (Notification <<< customize) { "JobStatesToNotify": (NullOrUndefined Nothing), "NotifyAll": (NullOrUndefined Nothing), "SnsTopicARN": (NullOrUndefined Nothing) }



newtype ResourceARN = ResourceARN String
derive instance newtypeResourceARN :: Newtype ResourceARN _
derive instance repGenericResourceARN :: Generic ResourceARN _
instance showResourceARN :: Show ResourceARN where
  show = genericShow
instance decodeResourceARN :: Decode ResourceARN where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceARN :: Encode ResourceARN where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RoleARN = RoleARN String
derive instance newtypeRoleARN :: Newtype RoleARN _
derive instance repGenericRoleARN :: Generic RoleARN _
instance showRoleARN :: Show RoleARN where
  show = genericShow
instance decodeRoleARN :: Decode RoleARN where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleARN :: Encode RoleARN where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>
newtype S3Resource = S3Resource 
  { "BucketArn" :: NullOrUndefined.NullOrUndefined (ResourceARN)
  , "KeyRange" :: NullOrUndefined.NullOrUndefined (KeyRange)
  }
derive instance newtypeS3Resource :: Newtype S3Resource _
derive instance repGenericS3Resource :: Generic S3Resource _
instance showS3Resource :: Show S3Resource where
  show = genericShow
instance decodeS3Resource :: Decode S3Resource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeS3Resource :: Encode S3Resource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs S3Resource from required parameters
newS3Resource :: S3Resource
newS3Resource  = S3Resource { "BucketArn": (NullOrUndefined Nothing), "KeyRange": (NullOrUndefined Nothing) }

-- | Constructs S3Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newS3Resource' :: ( { "BucketArn" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "KeyRange" :: NullOrUndefined.NullOrUndefined (KeyRange) } -> {"BucketArn" :: NullOrUndefined.NullOrUndefined (ResourceARN) , "KeyRange" :: NullOrUndefined.NullOrUndefined (KeyRange) } ) -> S3Resource
newS3Resource'  customize = (S3Resource <<< customize) { "BucketArn": (NullOrUndefined Nothing), "KeyRange": (NullOrUndefined Nothing) }



newtype S3ResourceList = S3ResourceList (Array S3Resource)
derive instance newtypeS3ResourceList :: Newtype S3ResourceList _
derive instance repGenericS3ResourceList :: Generic S3ResourceList _
instance showS3ResourceList :: Show S3ResourceList where
  show = genericShow
instance decodeS3ResourceList :: Decode S3ResourceList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeS3ResourceList :: Encode S3ResourceList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>
newtype Shipment = Shipment 
  { "Status" :: NullOrUndefined.NullOrUndefined (String)
  , "TrackingNumber" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeShipment :: Newtype Shipment _
derive instance repGenericShipment :: Generic Shipment _
instance showShipment :: Show Shipment where
  show = genericShow
instance decodeShipment :: Decode Shipment where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShipment :: Encode Shipment where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Shipment from required parameters
newShipment :: Shipment
newShipment  = Shipment { "Status": (NullOrUndefined Nothing), "TrackingNumber": (NullOrUndefined Nothing) }

-- | Constructs Shipment's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShipment' :: ( { "Status" :: NullOrUndefined.NullOrUndefined (String) , "TrackingNumber" :: NullOrUndefined.NullOrUndefined (String) } -> {"Status" :: NullOrUndefined.NullOrUndefined (String) , "TrackingNumber" :: NullOrUndefined.NullOrUndefined (String) } ) -> Shipment
newShipment'  customize = (Shipment <<< customize) { "Status": (NullOrUndefined Nothing), "TrackingNumber": (NullOrUndefined Nothing) }



-- | <p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>
newtype ShippingDetails = ShippingDetails 
  { "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption)
  , "InboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment)
  , "OutboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment)
  }
derive instance newtypeShippingDetails :: Newtype ShippingDetails _
derive instance repGenericShippingDetails :: Generic ShippingDetails _
instance showShippingDetails :: Show ShippingDetails where
  show = genericShow
instance decodeShippingDetails :: Decode ShippingDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShippingDetails :: Encode ShippingDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ShippingDetails from required parameters
newShippingDetails :: ShippingDetails
newShippingDetails  = ShippingDetails { "InboundShipment": (NullOrUndefined Nothing), "OutboundShipment": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }

-- | Constructs ShippingDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShippingDetails' :: ( { "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "InboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment) , "OutboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment) } -> {"ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "InboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment) , "OutboundShipment" :: NullOrUndefined.NullOrUndefined (Shipment) } ) -> ShippingDetails
newShippingDetails'  customize = (ShippingDetails <<< customize) { "InboundShipment": (NullOrUndefined Nothing), "OutboundShipment": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }



newtype ShippingOption = ShippingOption String
derive instance newtypeShippingOption :: Newtype ShippingOption _
derive instance repGenericShippingOption :: Generic ShippingOption _
instance showShippingOption :: Show ShippingOption where
  show = genericShow
instance decodeShippingOption :: Decode ShippingOption where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShippingOption :: Encode ShippingOption where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SnowballCapacity = SnowballCapacity String
derive instance newtypeSnowballCapacity :: Newtype SnowballCapacity _
derive instance repGenericSnowballCapacity :: Generic SnowballCapacity _
instance showSnowballCapacity :: Show SnowballCapacity where
  show = genericShow
instance decodeSnowballCapacity :: Decode SnowballCapacity where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSnowballCapacity :: Encode SnowballCapacity where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SnowballType = SnowballType String
derive instance newtypeSnowballType :: Newtype SnowballType _
derive instance repGenericSnowballType :: Generic SnowballType _
instance showSnowballType :: Show SnowballType where
  show = genericShow
instance decodeSnowballType :: Decode SnowballType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSnowballType :: Encode SnowballType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype SnsTopicARN = SnsTopicARN String
derive instance newtypeSnsTopicARN :: Newtype SnsTopicARN _
derive instance repGenericSnsTopicARN :: Generic SnsTopicARN _
instance showSnsTopicARN :: Show SnsTopicARN where
  show = genericShow
instance decodeSnsTopicARN :: Decode SnsTopicARN where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSnsTopicARN :: Encode SnsTopicARN where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>
newtype UnsupportedAddressException = UnsupportedAddressException 
  { "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeUnsupportedAddressException :: Newtype UnsupportedAddressException _
derive instance repGenericUnsupportedAddressException :: Generic UnsupportedAddressException _
instance showUnsupportedAddressException :: Show UnsupportedAddressException where
  show = genericShow
instance decodeUnsupportedAddressException :: Decode UnsupportedAddressException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnsupportedAddressException :: Encode UnsupportedAddressException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UnsupportedAddressException from required parameters
newUnsupportedAddressException :: UnsupportedAddressException
newUnsupportedAddressException  = UnsupportedAddressException { "Message": (NullOrUndefined Nothing) }

-- | Constructs UnsupportedAddressException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUnsupportedAddressException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> UnsupportedAddressException
newUnsupportedAddressException'  customize = (UnsupportedAddressException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype UpdateClusterRequest = UpdateClusterRequest 
  { "ClusterId" :: (ClusterId)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeUpdateClusterRequest :: Newtype UpdateClusterRequest _
derive instance repGenericUpdateClusterRequest :: Generic UpdateClusterRequest _
instance showUpdateClusterRequest :: Show UpdateClusterRequest where
  show = genericShow
instance decodeUpdateClusterRequest :: Decode UpdateClusterRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateClusterRequest :: Encode UpdateClusterRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateClusterRequest from required parameters
newUpdateClusterRequest :: ClusterId -> UpdateClusterRequest
newUpdateClusterRequest _ClusterId = UpdateClusterRequest { "ClusterId": _ClusterId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }

-- | Constructs UpdateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"ClusterId" :: (ClusterId) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> UpdateClusterRequest
newUpdateClusterRequest' _ClusterId customize = (UpdateClusterRequest <<< customize) { "ClusterId": _ClusterId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing) }



newtype UpdateClusterResult = UpdateClusterResult Types.NoArguments
derive instance newtypeUpdateClusterResult :: Newtype UpdateClusterResult _
derive instance repGenericUpdateClusterResult :: Generic UpdateClusterResult _
instance showUpdateClusterResult :: Show UpdateClusterResult where
  show = genericShow
instance decodeUpdateClusterResult :: Decode UpdateClusterResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateClusterResult :: Encode UpdateClusterResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype UpdateJobRequest = UpdateJobRequest 
  { "JobId" :: (JobId)
  , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN)
  , "Notification" :: NullOrUndefined.NullOrUndefined (Notification)
  , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource)
  , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity)
  , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId)
  }
derive instance newtypeUpdateJobRequest :: Newtype UpdateJobRequest _
derive instance repGenericUpdateJobRequest :: Generic UpdateJobRequest _
instance showUpdateJobRequest :: Show UpdateJobRequest where
  show = genericShow
instance decodeUpdateJobRequest :: Decode UpdateJobRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateJobRequest :: Encode UpdateJobRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateJobRequest from required parameters
newUpdateJobRequest :: JobId -> UpdateJobRequest
newUpdateJobRequest _JobId = UpdateJobRequest { "JobId": _JobId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing) }

-- | Constructs UpdateJobRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateJobRequest' :: JobId -> ( { "JobId" :: (JobId) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } -> {"JobId" :: (JobId) , "RoleARN" :: NullOrUndefined.NullOrUndefined (RoleARN) , "Notification" :: NullOrUndefined.NullOrUndefined (Notification) , "Resources" :: NullOrUndefined.NullOrUndefined (JobResource) , "AddressId" :: NullOrUndefined.NullOrUndefined (AddressId) , "ShippingOption" :: NullOrUndefined.NullOrUndefined (ShippingOption) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "SnowballCapacityPreference" :: NullOrUndefined.NullOrUndefined (SnowballCapacity) , "ForwardingAddressId" :: NullOrUndefined.NullOrUndefined (AddressId) } ) -> UpdateJobRequest
newUpdateJobRequest' _JobId customize = (UpdateJobRequest <<< customize) { "JobId": _JobId, "AddressId": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "ForwardingAddressId": (NullOrUndefined Nothing), "Notification": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "RoleARN": (NullOrUndefined Nothing), "ShippingOption": (NullOrUndefined Nothing), "SnowballCapacityPreference": (NullOrUndefined Nothing) }



newtype UpdateJobResult = UpdateJobResult Types.NoArguments
derive instance newtypeUpdateJobResult :: Newtype UpdateJobResult _
derive instance repGenericUpdateJobResult :: Generic UpdateJobResult _
instance showUpdateJobResult :: Show UpdateJobResult where
  show = genericShow
instance decodeUpdateJobResult :: Decode UpdateJobResult where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateJobResult :: Encode UpdateJobResult where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

