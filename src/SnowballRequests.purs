
module AWS.Snowball.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Snowball as Snowball
import AWS.Snowball.Types as SnowballTypes


-- | <p>Cancels a cluster job. You can only cancel a cluster job while it's in the <code>AwaitingQuorum</code> status. You'll have at least an hour after creating a cluster job to cancel it.</p>
cancelCluster :: forall eff. Snowball.Service -> SnowballTypes.CancelClusterRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.CancelClusterResult
cancelCluster (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelCluster"


-- | <p>Cancels the specified job. You can only cancel a job before its <code>JobState</code> value changes to <code>PreparingAppliance</code>. Requesting the <code>ListJobs</code> or <code>DescribeJob</code> action will return a job's <code>JobState</code> as part of the response element data returned.</p>
cancelJob :: forall eff. Snowball.Service -> SnowballTypes.CancelJobRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.CancelJobResult
cancelJob (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelJob"


-- | <p>Creates an address for a Snowball to be shipped to. In most regions, addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception is thrown.</p>
createAddress :: forall eff. Snowball.Service -> SnowballTypes.CreateAddressRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.CreateAddressResult
createAddress (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAddress"


-- | <p>Creates an empty cluster. Each cluster supports five nodes. You use the <a>CreateJob</a> action separately to create the jobs for each of these nodes. The cluster does not ship until these five node jobs have been created.</p>
createCluster :: forall eff. Snowball.Service -> SnowballTypes.CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.CreateClusterResult
createCluster (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCluster"


-- | <p>Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a cluster, you only need to provide the <code>clusterId</code> value; the other job attributes are inherited from the cluster. </p>
createJob :: forall eff. Snowball.Service -> SnowballTypes.CreateJobRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.CreateJobResult
createJob (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createJob"


-- | <p>Takes an <code>AddressId</code> and returns specific details about that address in the form of an <code>Address</code> object.</p>
describeAddress :: forall eff. Snowball.Service -> SnowballTypes.DescribeAddressRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.DescribeAddressResult
describeAddress (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAddress"


-- | <p>Returns a specified number of <code>ADDRESS</code> objects. Calling this API in one of the US regions will return addresses from the list of all addresses associated with this account in all US regions.</p>
describeAddresses :: forall eff. Snowball.Service -> SnowballTypes.DescribeAddressesRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.DescribeAddressesResult
describeAddresses (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAddresses"


-- | <p>Returns information about a specific cluster including shipping information, cluster status, and other important metadata.</p>
describeCluster :: forall eff. Snowball.Service -> SnowballTypes.DescribeClusterRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.DescribeClusterResult
describeCluster (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCluster"


-- | <p>Returns information about a specific job including shipping information, job status, and other important metadata. </p>
describeJob :: forall eff. Snowball.Service -> SnowballTypes.DescribeJobRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.DescribeJobResult
describeJob (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeJob"


-- | <p>Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified <code>JobId</code> value. You can access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60 minutes have passed, you'll have to make another call to the <code>GetJobManifest</code> action.</p> <p>The manifest is an encrypted file that you can download after your job enters the <code>WithCustomer</code> status. The manifest is decrypted by using the <code>UnlockCode</code> code value, when you pass both values to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of an <code>UnlockCode</code> value in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p> <p>The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.</p>
getJobManifest :: forall eff. Snowball.Service -> SnowballTypes.GetJobManifestRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.GetJobManifestResult
getJobManifest (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getJobManifest"


-- | <p>Returns the <code>UnlockCode</code> code value for the specified job. A particular <code>UnlockCode</code> value can be accessed for up to 90 days after the associated job has been created.</p> <p>The <code>UnlockCode</code> value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client is started for the first time.</p> <p>As a best practice, we recommend that you don't save a copy of the <code>UnlockCode</code> in the same location as the manifest file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated with that job.</p>
getJobUnlockCode :: forall eff. Snowball.Service -> SnowballTypes.GetJobUnlockCodeRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.GetJobUnlockCodeResult
getJobUnlockCode (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getJobUnlockCode"


-- | <p>Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has in use.</p> <p>The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your service limit, contact AWS Support.</p>
getSnowballUsage :: forall eff. Snowball.Service -> SnowballTypes.GetSnowballUsageRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.GetSnowballUsageResult
getSnowballUsage (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getSnowballUsage"


-- | <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object is for a job in the specified cluster and contains a job's state, a job's ID, and other information.</p>
listClusterJobs :: forall eff. Snowball.Service -> SnowballTypes.ListClusterJobsRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.ListClusterJobsResult
listClusterJobs (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listClusterJobs"


-- | <p>Returns an array of <code>ClusterListEntry</code> objects of the specified length. Each <code>ClusterListEntry</code> object contains a cluster's state, a cluster's ID, and other important status information.</p>
listClusters :: forall eff. Snowball.Service -> SnowballTypes.ListClustersRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.ListClustersResult
listClusters (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listClusters"


-- | <p>Returns an array of <code>JobListEntry</code> objects of the specified length. Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.</p>
listJobs :: forall eff. Snowball.Service -> SnowballTypes.ListJobsRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.ListJobsResult
listJobs (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listJobs"


-- | <p>While a cluster's <code>ClusterState</code> value is in the <code>AwaitingQuorum</code> state, you can update some of the information associated with a cluster. Once the cluster changes to a different job state, usually 60 minutes after the cluster being created, this action is no longer available.</p>
updateCluster :: forall eff. Snowball.Service -> SnowballTypes.UpdateClusterRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.UpdateClusterResult
updateCluster (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateCluster"


-- | <p>While a job's <code>JobState</code> value is <code>New</code>, you can update some of the information associated with a job. Once the job changes to a different job state, usually within 60 minutes of the job being created, this action is no longer available.</p>
updateJob :: forall eff. Snowball.Service -> SnowballTypes.UpdateJobRequest -> Aff (exception :: EXCEPTION | eff) SnowballTypes.UpdateJobResult
updateJob (Snowball.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateJob"
