## Module AWS.Snowball.Types

#### `options`

``` purescript
options :: Options
```

#### `Address`

``` purescript
newtype Address
  = Address { "AddressId" :: NullOrUndefined (AddressId), "Name" :: NullOrUndefined (String), "Company" :: NullOrUndefined (String), "Street1" :: NullOrUndefined (String), "Street2" :: NullOrUndefined (String), "Street3" :: NullOrUndefined (String), "City" :: NullOrUndefined (String), "StateOrProvince" :: NullOrUndefined (String), "PrefectureOrDistrict" :: NullOrUndefined (String), "Landmark" :: NullOrUndefined (String), "Country" :: NullOrUndefined (String), "PostalCode" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "IsRestricted" :: NullOrUndefined (Boolean) }
```

<p>The address that you want the Snowball or Snowballs associated with a specific job to be shipped to. Addresses are validated at the time of creation. The address you provide must be located within the serviceable area of your region. Although no individual elements of the <code>Address</code> are required, if the address is invalid or unsupported, then an exception is thrown.</p>

##### Instances
``` purescript
Newtype Address _
Generic Address _
Show Address
Decode Address
Encode Address
```

#### `newAddress`

``` purescript
newAddress :: Address
```

Constructs Address from required parameters

#### `newAddress'`

``` purescript
newAddress' :: ({ "AddressId" :: NullOrUndefined (AddressId), "Name" :: NullOrUndefined (String), "Company" :: NullOrUndefined (String), "Street1" :: NullOrUndefined (String), "Street2" :: NullOrUndefined (String), "Street3" :: NullOrUndefined (String), "City" :: NullOrUndefined (String), "StateOrProvince" :: NullOrUndefined (String), "PrefectureOrDistrict" :: NullOrUndefined (String), "Landmark" :: NullOrUndefined (String), "Country" :: NullOrUndefined (String), "PostalCode" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "IsRestricted" :: NullOrUndefined (Boolean) } -> { "AddressId" :: NullOrUndefined (AddressId), "Name" :: NullOrUndefined (String), "Company" :: NullOrUndefined (String), "Street1" :: NullOrUndefined (String), "Street2" :: NullOrUndefined (String), "Street3" :: NullOrUndefined (String), "City" :: NullOrUndefined (String), "StateOrProvince" :: NullOrUndefined (String), "PrefectureOrDistrict" :: NullOrUndefined (String), "Landmark" :: NullOrUndefined (String), "Country" :: NullOrUndefined (String), "PostalCode" :: NullOrUndefined (String), "PhoneNumber" :: NullOrUndefined (String), "IsRestricted" :: NullOrUndefined (Boolean) }) -> Address
```

Constructs Address's fields from required parameters

#### `AddressId`

``` purescript
newtype AddressId
  = AddressId String
```

##### Instances
``` purescript
Newtype AddressId _
Generic AddressId _
Show AddressId
Decode AddressId
Encode AddressId
```

#### `AddressList`

``` purescript
newtype AddressList
  = AddressList (Array Address)
```

##### Instances
``` purescript
Newtype AddressList _
Generic AddressList _
Show AddressList
Decode AddressList
Encode AddressList
```

#### `CancelClusterRequest`

``` purescript
newtype CancelClusterRequest
  = CancelClusterRequest { "ClusterId" :: ClusterId }
```

##### Instances
``` purescript
Newtype CancelClusterRequest _
Generic CancelClusterRequest _
Show CancelClusterRequest
Decode CancelClusterRequest
Encode CancelClusterRequest
```

#### `newCancelClusterRequest`

``` purescript
newCancelClusterRequest :: ClusterId -> CancelClusterRequest
```

Constructs CancelClusterRequest from required parameters

#### `newCancelClusterRequest'`

``` purescript
newCancelClusterRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId } -> { "ClusterId" :: ClusterId }) -> CancelClusterRequest
```

Constructs CancelClusterRequest's fields from required parameters

#### `CancelClusterResult`

``` purescript
newtype CancelClusterResult
  = CancelClusterResult NoArguments
```

##### Instances
``` purescript
Newtype CancelClusterResult _
Generic CancelClusterResult _
Show CancelClusterResult
Decode CancelClusterResult
Encode CancelClusterResult
```

#### `CancelJobRequest`

``` purescript
newtype CancelJobRequest
  = CancelJobRequest { "JobId" :: JobId }
```

##### Instances
``` purescript
Newtype CancelJobRequest _
Generic CancelJobRequest _
Show CancelJobRequest
Decode CancelJobRequest
Encode CancelJobRequest
```

#### `newCancelJobRequest`

``` purescript
newCancelJobRequest :: JobId -> CancelJobRequest
```

Constructs CancelJobRequest from required parameters

#### `newCancelJobRequest'`

``` purescript
newCancelJobRequest' :: JobId -> ({ "JobId" :: JobId } -> { "JobId" :: JobId }) -> CancelJobRequest
```

Constructs CancelJobRequest's fields from required parameters

#### `CancelJobResult`

``` purescript
newtype CancelJobResult
  = CancelJobResult NoArguments
```

##### Instances
``` purescript
Newtype CancelJobResult _
Generic CancelJobResult _
Show CancelJobResult
Decode CancelJobResult
Encode CancelJobResult
```

#### `ClusterId`

``` purescript
newtype ClusterId
  = ClusterId String
```

##### Instances
``` purescript
Newtype ClusterId _
Generic ClusterId _
Show ClusterId
Decode ClusterId
Encode ClusterId
```

#### `ClusterLimitExceededException`

``` purescript
newtype ClusterLimitExceededException
  = ClusterLimitExceededException { "Message" :: NullOrUndefined (String) }
```

<p>Job creation failed. Currently, clusters support five nodes. If you have less than five nodes for your cluster and you have more nodes to create for this cluster, try again and create jobs until your cluster has exactly five notes.</p>

##### Instances
``` purescript
Newtype ClusterLimitExceededException _
Generic ClusterLimitExceededException _
Show ClusterLimitExceededException
Decode ClusterLimitExceededException
Encode ClusterLimitExceededException
```

#### `newClusterLimitExceededException`

``` purescript
newClusterLimitExceededException :: ClusterLimitExceededException
```

Constructs ClusterLimitExceededException from required parameters

#### `newClusterLimitExceededException'`

``` purescript
newClusterLimitExceededException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> ClusterLimitExceededException
```

Constructs ClusterLimitExceededException's fields from required parameters

#### `ClusterListEntry`

``` purescript
newtype ClusterListEntry
  = ClusterListEntry { "ClusterId" :: NullOrUndefined (String), "ClusterState" :: NullOrUndefined (ClusterState), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) }
```

<p>Contains a cluster's state, a cluster's ID, and other important information.</p>

##### Instances
``` purescript
Newtype ClusterListEntry _
Generic ClusterListEntry _
Show ClusterListEntry
Decode ClusterListEntry
Encode ClusterListEntry
```

#### `newClusterListEntry`

``` purescript
newClusterListEntry :: ClusterListEntry
```

Constructs ClusterListEntry from required parameters

#### `newClusterListEntry'`

``` purescript
newClusterListEntry' :: ({ "ClusterId" :: NullOrUndefined (String), "ClusterState" :: NullOrUndefined (ClusterState), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) } -> { "ClusterId" :: NullOrUndefined (String), "ClusterState" :: NullOrUndefined (ClusterState), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) }) -> ClusterListEntry
```

Constructs ClusterListEntry's fields from required parameters

#### `ClusterListEntryList`

``` purescript
newtype ClusterListEntryList
  = ClusterListEntryList (Array ClusterListEntry)
```

##### Instances
``` purescript
Newtype ClusterListEntryList _
Generic ClusterListEntryList _
Show ClusterListEntryList
Decode ClusterListEntryList
Encode ClusterListEntryList
```

#### `ClusterMetadata`

``` purescript
newtype ClusterMetadata
  = ClusterMetadata { "ClusterId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "ClusterState" :: NullOrUndefined (ClusterState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

<p>Contains metadata about a specific cluster.</p>

##### Instances
``` purescript
Newtype ClusterMetadata _
Generic ClusterMetadata _
Show ClusterMetadata
Decode ClusterMetadata
Encode ClusterMetadata
```

#### `newClusterMetadata`

``` purescript
newClusterMetadata :: ClusterMetadata
```

Constructs ClusterMetadata from required parameters

#### `newClusterMetadata'`

``` purescript
newClusterMetadata' :: ({ "ClusterId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "ClusterState" :: NullOrUndefined (ClusterState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "ClusterId" :: NullOrUndefined (String), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "ClusterState" :: NullOrUndefined (ClusterState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> ClusterMetadata
```

Constructs ClusterMetadata's fields from required parameters

#### `ClusterState`

``` purescript
newtype ClusterState
  = ClusterState String
```

##### Instances
``` purescript
Newtype ClusterState _
Generic ClusterState _
Show ClusterState
Decode ClusterState
Encode ClusterState
```

#### `CreateAddressRequest`

``` purescript
newtype CreateAddressRequest
  = CreateAddressRequest { "Address" :: Address }
```

##### Instances
``` purescript
Newtype CreateAddressRequest _
Generic CreateAddressRequest _
Show CreateAddressRequest
Decode CreateAddressRequest
Encode CreateAddressRequest
```

#### `newCreateAddressRequest`

``` purescript
newCreateAddressRequest :: Address -> CreateAddressRequest
```

Constructs CreateAddressRequest from required parameters

#### `newCreateAddressRequest'`

``` purescript
newCreateAddressRequest' :: Address -> ({ "Address" :: Address } -> { "Address" :: Address }) -> CreateAddressRequest
```

Constructs CreateAddressRequest's fields from required parameters

#### `CreateAddressResult`

``` purescript
newtype CreateAddressResult
  = CreateAddressResult { "AddressId" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype CreateAddressResult _
Generic CreateAddressResult _
Show CreateAddressResult
Decode CreateAddressResult
Encode CreateAddressResult
```

#### `newCreateAddressResult`

``` purescript
newCreateAddressResult :: CreateAddressResult
```

Constructs CreateAddressResult from required parameters

#### `newCreateAddressResult'`

``` purescript
newCreateAddressResult' :: ({ "AddressId" :: NullOrUndefined (String) } -> { "AddressId" :: NullOrUndefined (String) }) -> CreateAddressResult
```

Constructs CreateAddressResult's fields from required parameters

#### `CreateClusterRequest`

``` purescript
newtype CreateClusterRequest
  = CreateClusterRequest { "JobType" :: JobType, "Resources" :: JobResource, "Description" :: NullOrUndefined (String), "AddressId" :: AddressId, "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: RoleARN, "SnowballType" :: NullOrUndefined (SnowballType), "ShippingOption" :: ShippingOption, "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

##### Instances
``` purescript
Newtype CreateClusterRequest _
Generic CreateClusterRequest _
Show CreateClusterRequest
Decode CreateClusterRequest
Encode CreateClusterRequest
```

#### `newCreateClusterRequest`

``` purescript
newCreateClusterRequest :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> CreateClusterRequest
```

Constructs CreateClusterRequest from required parameters

#### `newCreateClusterRequest'`

``` purescript
newCreateClusterRequest' :: AddressId -> JobType -> JobResource -> RoleARN -> ShippingOption -> ({ "JobType" :: JobType, "Resources" :: JobResource, "Description" :: NullOrUndefined (String), "AddressId" :: AddressId, "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: RoleARN, "SnowballType" :: NullOrUndefined (SnowballType), "ShippingOption" :: ShippingOption, "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "JobType" :: JobType, "Resources" :: JobResource, "Description" :: NullOrUndefined (String), "AddressId" :: AddressId, "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: RoleARN, "SnowballType" :: NullOrUndefined (SnowballType), "ShippingOption" :: ShippingOption, "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> CreateClusterRequest
```

Constructs CreateClusterRequest's fields from required parameters

#### `CreateClusterResult`

``` purescript
newtype CreateClusterResult
  = CreateClusterResult { "ClusterId" :: NullOrUndefined (ClusterId) }
```

##### Instances
``` purescript
Newtype CreateClusterResult _
Generic CreateClusterResult _
Show CreateClusterResult
Decode CreateClusterResult
Encode CreateClusterResult
```

#### `newCreateClusterResult`

``` purescript
newCreateClusterResult :: CreateClusterResult
```

Constructs CreateClusterResult from required parameters

#### `newCreateClusterResult'`

``` purescript
newCreateClusterResult' :: ({ "ClusterId" :: NullOrUndefined (ClusterId) } -> { "ClusterId" :: NullOrUndefined (ClusterId) }) -> CreateClusterResult
```

Constructs CreateClusterResult's fields from required parameters

#### `CreateJobRequest`

``` purescript
newtype CreateJobRequest
  = CreateJobRequest { "JobType" :: NullOrUndefined (JobType), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "AddressId" :: NullOrUndefined (AddressId), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ClusterId" :: NullOrUndefined (ClusterId), "SnowballType" :: NullOrUndefined (SnowballType), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

##### Instances
``` purescript
Newtype CreateJobRequest _
Generic CreateJobRequest _
Show CreateJobRequest
Decode CreateJobRequest
Encode CreateJobRequest
```

#### `newCreateJobRequest`

``` purescript
newCreateJobRequest :: CreateJobRequest
```

Constructs CreateJobRequest from required parameters

#### `newCreateJobRequest'`

``` purescript
newCreateJobRequest' :: ({ "JobType" :: NullOrUndefined (JobType), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "AddressId" :: NullOrUndefined (AddressId), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ClusterId" :: NullOrUndefined (ClusterId), "SnowballType" :: NullOrUndefined (SnowballType), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "JobType" :: NullOrUndefined (JobType), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "AddressId" :: NullOrUndefined (AddressId), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ClusterId" :: NullOrUndefined (ClusterId), "SnowballType" :: NullOrUndefined (SnowballType), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> CreateJobRequest
```

Constructs CreateJobRequest's fields from required parameters

#### `CreateJobResult`

``` purescript
newtype CreateJobResult
  = CreateJobResult { "JobId" :: NullOrUndefined (JobId) }
```

##### Instances
``` purescript
Newtype CreateJobResult _
Generic CreateJobResult _
Show CreateJobResult
Decode CreateJobResult
Encode CreateJobResult
```

#### `newCreateJobResult`

``` purescript
newCreateJobResult :: CreateJobResult
```

Constructs CreateJobResult from required parameters

#### `newCreateJobResult'`

``` purescript
newCreateJobResult' :: ({ "JobId" :: NullOrUndefined (JobId) } -> { "JobId" :: NullOrUndefined (JobId) }) -> CreateJobResult
```

Constructs CreateJobResult's fields from required parameters

#### `DataTransfer`

``` purescript
newtype DataTransfer
  = DataTransfer { "BytesTransferred" :: NullOrUndefined (Number), "ObjectsTransferred" :: NullOrUndefined (Number), "TotalBytes" :: NullOrUndefined (Number), "TotalObjects" :: NullOrUndefined (Number) }
```

<p>Defines the real-time status of a Snowball's data transfer while the appliance is at AWS. This data is only available while a job has a <code>JobState</code> value of <code>InProgress</code>, for both import and export jobs.</p>

##### Instances
``` purescript
Newtype DataTransfer _
Generic DataTransfer _
Show DataTransfer
Decode DataTransfer
Encode DataTransfer
```

#### `newDataTransfer`

``` purescript
newDataTransfer :: DataTransfer
```

Constructs DataTransfer from required parameters

#### `newDataTransfer'`

``` purescript
newDataTransfer' :: ({ "BytesTransferred" :: NullOrUndefined (Number), "ObjectsTransferred" :: NullOrUndefined (Number), "TotalBytes" :: NullOrUndefined (Number), "TotalObjects" :: NullOrUndefined (Number) } -> { "BytesTransferred" :: NullOrUndefined (Number), "ObjectsTransferred" :: NullOrUndefined (Number), "TotalBytes" :: NullOrUndefined (Number), "TotalObjects" :: NullOrUndefined (Number) }) -> DataTransfer
```

Constructs DataTransfer's fields from required parameters

#### `DescribeAddressRequest`

``` purescript
newtype DescribeAddressRequest
  = DescribeAddressRequest { "AddressId" :: AddressId }
```

##### Instances
``` purescript
Newtype DescribeAddressRequest _
Generic DescribeAddressRequest _
Show DescribeAddressRequest
Decode DescribeAddressRequest
Encode DescribeAddressRequest
```

#### `newDescribeAddressRequest`

``` purescript
newDescribeAddressRequest :: AddressId -> DescribeAddressRequest
```

Constructs DescribeAddressRequest from required parameters

#### `newDescribeAddressRequest'`

``` purescript
newDescribeAddressRequest' :: AddressId -> ({ "AddressId" :: AddressId } -> { "AddressId" :: AddressId }) -> DescribeAddressRequest
```

Constructs DescribeAddressRequest's fields from required parameters

#### `DescribeAddressResult`

``` purescript
newtype DescribeAddressResult
  = DescribeAddressResult { "Address" :: NullOrUndefined (Address) }
```

##### Instances
``` purescript
Newtype DescribeAddressResult _
Generic DescribeAddressResult _
Show DescribeAddressResult
Decode DescribeAddressResult
Encode DescribeAddressResult
```

#### `newDescribeAddressResult`

``` purescript
newDescribeAddressResult :: DescribeAddressResult
```

Constructs DescribeAddressResult from required parameters

#### `newDescribeAddressResult'`

``` purescript
newDescribeAddressResult' :: ({ "Address" :: NullOrUndefined (Address) } -> { "Address" :: NullOrUndefined (Address) }) -> DescribeAddressResult
```

Constructs DescribeAddressResult's fields from required parameters

#### `DescribeAddressesRequest`

``` purescript
newtype DescribeAddressesRequest
  = DescribeAddressesRequest { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeAddressesRequest _
Generic DescribeAddressesRequest _
Show DescribeAddressesRequest
Decode DescribeAddressesRequest
Encode DescribeAddressesRequest
```

#### `newDescribeAddressesRequest`

``` purescript
newDescribeAddressesRequest :: DescribeAddressesRequest
```

Constructs DescribeAddressesRequest from required parameters

#### `newDescribeAddressesRequest'`

``` purescript
newDescribeAddressesRequest' :: ({ "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) } -> { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }) -> DescribeAddressesRequest
```

Constructs DescribeAddressesRequest's fields from required parameters

#### `DescribeAddressesResult`

``` purescript
newtype DescribeAddressesResult
  = DescribeAddressesResult { "Addresses" :: NullOrUndefined (AddressList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype DescribeAddressesResult _
Generic DescribeAddressesResult _
Show DescribeAddressesResult
Decode DescribeAddressesResult
Encode DescribeAddressesResult
```

#### `newDescribeAddressesResult`

``` purescript
newDescribeAddressesResult :: DescribeAddressesResult
```

Constructs DescribeAddressesResult from required parameters

#### `newDescribeAddressesResult'`

``` purescript
newDescribeAddressesResult' :: ({ "Addresses" :: NullOrUndefined (AddressList), "NextToken" :: NullOrUndefined (String) } -> { "Addresses" :: NullOrUndefined (AddressList), "NextToken" :: NullOrUndefined (String) }) -> DescribeAddressesResult
```

Constructs DescribeAddressesResult's fields from required parameters

#### `DescribeClusterRequest`

``` purescript
newtype DescribeClusterRequest
  = DescribeClusterRequest { "ClusterId" :: ClusterId }
```

##### Instances
``` purescript
Newtype DescribeClusterRequest _
Generic DescribeClusterRequest _
Show DescribeClusterRequest
Decode DescribeClusterRequest
Encode DescribeClusterRequest
```

#### `newDescribeClusterRequest`

``` purescript
newDescribeClusterRequest :: ClusterId -> DescribeClusterRequest
```

Constructs DescribeClusterRequest from required parameters

#### `newDescribeClusterRequest'`

``` purescript
newDescribeClusterRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId } -> { "ClusterId" :: ClusterId }) -> DescribeClusterRequest
```

Constructs DescribeClusterRequest's fields from required parameters

#### `DescribeClusterResult`

``` purescript
newtype DescribeClusterResult
  = DescribeClusterResult { "ClusterMetadata" :: NullOrUndefined (ClusterMetadata) }
```

##### Instances
``` purescript
Newtype DescribeClusterResult _
Generic DescribeClusterResult _
Show DescribeClusterResult
Decode DescribeClusterResult
Encode DescribeClusterResult
```

#### `newDescribeClusterResult`

``` purescript
newDescribeClusterResult :: DescribeClusterResult
```

Constructs DescribeClusterResult from required parameters

#### `newDescribeClusterResult'`

``` purescript
newDescribeClusterResult' :: ({ "ClusterMetadata" :: NullOrUndefined (ClusterMetadata) } -> { "ClusterMetadata" :: NullOrUndefined (ClusterMetadata) }) -> DescribeClusterResult
```

Constructs DescribeClusterResult's fields from required parameters

#### `DescribeJobRequest`

``` purescript
newtype DescribeJobRequest
  = DescribeJobRequest { "JobId" :: JobId }
```

##### Instances
``` purescript
Newtype DescribeJobRequest _
Generic DescribeJobRequest _
Show DescribeJobRequest
Decode DescribeJobRequest
Encode DescribeJobRequest
```

#### `newDescribeJobRequest`

``` purescript
newDescribeJobRequest :: JobId -> DescribeJobRequest
```

Constructs DescribeJobRequest from required parameters

#### `newDescribeJobRequest'`

``` purescript
newDescribeJobRequest' :: JobId -> ({ "JobId" :: JobId } -> { "JobId" :: JobId }) -> DescribeJobRequest
```

Constructs DescribeJobRequest's fields from required parameters

#### `DescribeJobResult`

``` purescript
newtype DescribeJobResult
  = DescribeJobResult { "JobMetadata" :: NullOrUndefined (JobMetadata), "SubJobMetadata" :: NullOrUndefined (JobMetadataList) }
```

##### Instances
``` purescript
Newtype DescribeJobResult _
Generic DescribeJobResult _
Show DescribeJobResult
Decode DescribeJobResult
Encode DescribeJobResult
```

#### `newDescribeJobResult`

``` purescript
newDescribeJobResult :: DescribeJobResult
```

Constructs DescribeJobResult from required parameters

#### `newDescribeJobResult'`

``` purescript
newDescribeJobResult' :: ({ "JobMetadata" :: NullOrUndefined (JobMetadata), "SubJobMetadata" :: NullOrUndefined (JobMetadataList) } -> { "JobMetadata" :: NullOrUndefined (JobMetadata), "SubJobMetadata" :: NullOrUndefined (JobMetadataList) }) -> DescribeJobResult
```

Constructs DescribeJobResult's fields from required parameters

#### `EventTriggerDefinition`

``` purescript
newtype EventTriggerDefinition
  = EventTriggerDefinition { "EventResourceARN" :: NullOrUndefined (ResourceARN) }
```

<p>The container for the <a>EventTriggerDefinition$EventResourceARN</a>.</p>

##### Instances
``` purescript
Newtype EventTriggerDefinition _
Generic EventTriggerDefinition _
Show EventTriggerDefinition
Decode EventTriggerDefinition
Encode EventTriggerDefinition
```

#### `newEventTriggerDefinition`

``` purescript
newEventTriggerDefinition :: EventTriggerDefinition
```

Constructs EventTriggerDefinition from required parameters

#### `newEventTriggerDefinition'`

``` purescript
newEventTriggerDefinition' :: ({ "EventResourceARN" :: NullOrUndefined (ResourceARN) } -> { "EventResourceARN" :: NullOrUndefined (ResourceARN) }) -> EventTriggerDefinition
```

Constructs EventTriggerDefinition's fields from required parameters

#### `EventTriggerDefinitionList`

``` purescript
newtype EventTriggerDefinitionList
  = EventTriggerDefinitionList (Array EventTriggerDefinition)
```

##### Instances
``` purescript
Newtype EventTriggerDefinitionList _
Generic EventTriggerDefinitionList _
Show EventTriggerDefinitionList
Decode EventTriggerDefinitionList
Encode EventTriggerDefinitionList
```

#### `GetJobManifestRequest`

``` purescript
newtype GetJobManifestRequest
  = GetJobManifestRequest { "JobId" :: JobId }
```

##### Instances
``` purescript
Newtype GetJobManifestRequest _
Generic GetJobManifestRequest _
Show GetJobManifestRequest
Decode GetJobManifestRequest
Encode GetJobManifestRequest
```

#### `newGetJobManifestRequest`

``` purescript
newGetJobManifestRequest :: JobId -> GetJobManifestRequest
```

Constructs GetJobManifestRequest from required parameters

#### `newGetJobManifestRequest'`

``` purescript
newGetJobManifestRequest' :: JobId -> ({ "JobId" :: JobId } -> { "JobId" :: JobId }) -> GetJobManifestRequest
```

Constructs GetJobManifestRequest's fields from required parameters

#### `GetJobManifestResult`

``` purescript
newtype GetJobManifestResult
  = GetJobManifestResult { "ManifestURI" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetJobManifestResult _
Generic GetJobManifestResult _
Show GetJobManifestResult
Decode GetJobManifestResult
Encode GetJobManifestResult
```

#### `newGetJobManifestResult`

``` purescript
newGetJobManifestResult :: GetJobManifestResult
```

Constructs GetJobManifestResult from required parameters

#### `newGetJobManifestResult'`

``` purescript
newGetJobManifestResult' :: ({ "ManifestURI" :: NullOrUndefined (String) } -> { "ManifestURI" :: NullOrUndefined (String) }) -> GetJobManifestResult
```

Constructs GetJobManifestResult's fields from required parameters

#### `GetJobUnlockCodeRequest`

``` purescript
newtype GetJobUnlockCodeRequest
  = GetJobUnlockCodeRequest { "JobId" :: JobId }
```

##### Instances
``` purescript
Newtype GetJobUnlockCodeRequest _
Generic GetJobUnlockCodeRequest _
Show GetJobUnlockCodeRequest
Decode GetJobUnlockCodeRequest
Encode GetJobUnlockCodeRequest
```

#### `newGetJobUnlockCodeRequest`

``` purescript
newGetJobUnlockCodeRequest :: JobId -> GetJobUnlockCodeRequest
```

Constructs GetJobUnlockCodeRequest from required parameters

#### `newGetJobUnlockCodeRequest'`

``` purescript
newGetJobUnlockCodeRequest' :: JobId -> ({ "JobId" :: JobId } -> { "JobId" :: JobId }) -> GetJobUnlockCodeRequest
```

Constructs GetJobUnlockCodeRequest's fields from required parameters

#### `GetJobUnlockCodeResult`

``` purescript
newtype GetJobUnlockCodeResult
  = GetJobUnlockCodeResult { "UnlockCode" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype GetJobUnlockCodeResult _
Generic GetJobUnlockCodeResult _
Show GetJobUnlockCodeResult
Decode GetJobUnlockCodeResult
Encode GetJobUnlockCodeResult
```

#### `newGetJobUnlockCodeResult`

``` purescript
newGetJobUnlockCodeResult :: GetJobUnlockCodeResult
```

Constructs GetJobUnlockCodeResult from required parameters

#### `newGetJobUnlockCodeResult'`

``` purescript
newGetJobUnlockCodeResult' :: ({ "UnlockCode" :: NullOrUndefined (String) } -> { "UnlockCode" :: NullOrUndefined (String) }) -> GetJobUnlockCodeResult
```

Constructs GetJobUnlockCodeResult's fields from required parameters

#### `GetSnowballUsageRequest`

``` purescript
newtype GetSnowballUsageRequest
  = GetSnowballUsageRequest NoArguments
```

##### Instances
``` purescript
Newtype GetSnowballUsageRequest _
Generic GetSnowballUsageRequest _
Show GetSnowballUsageRequest
Decode GetSnowballUsageRequest
Encode GetSnowballUsageRequest
```

#### `GetSnowballUsageResult`

``` purescript
newtype GetSnowballUsageResult
  = GetSnowballUsageResult { "SnowballLimit" :: NullOrUndefined (Int), "SnowballsInUse" :: NullOrUndefined (Int) }
```

##### Instances
``` purescript
Newtype GetSnowballUsageResult _
Generic GetSnowballUsageResult _
Show GetSnowballUsageResult
Decode GetSnowballUsageResult
Encode GetSnowballUsageResult
```

#### `newGetSnowballUsageResult`

``` purescript
newGetSnowballUsageResult :: GetSnowballUsageResult
```

Constructs GetSnowballUsageResult from required parameters

#### `newGetSnowballUsageResult'`

``` purescript
newGetSnowballUsageResult' :: ({ "SnowballLimit" :: NullOrUndefined (Int), "SnowballsInUse" :: NullOrUndefined (Int) } -> { "SnowballLimit" :: NullOrUndefined (Int), "SnowballsInUse" :: NullOrUndefined (Int) }) -> GetSnowballUsageResult
```

Constructs GetSnowballUsageResult's fields from required parameters

#### `InvalidAddressException`

``` purescript
newtype InvalidAddressException
  = InvalidAddressException { "Message" :: NullOrUndefined (String) }
```

<p>The address provided was invalid. Check the address with your region's carrier, and try again.</p>

##### Instances
``` purescript
Newtype InvalidAddressException _
Generic InvalidAddressException _
Show InvalidAddressException
Decode InvalidAddressException
Encode InvalidAddressException
```

#### `newInvalidAddressException`

``` purescript
newInvalidAddressException :: InvalidAddressException
```

Constructs InvalidAddressException from required parameters

#### `newInvalidAddressException'`

``` purescript
newInvalidAddressException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidAddressException
```

Constructs InvalidAddressException's fields from required parameters

#### `InvalidInputCombinationException`

``` purescript
newtype InvalidInputCombinationException
  = InvalidInputCombinationException { "Message" :: NullOrUndefined (String) }
```

<p>Job or cluster creation failed. One ore more inputs were invalid. Confirm that the <a>CreateClusterRequest$SnowballType</a> value supports your <a>CreateJobRequest$JobType</a>, and try again.</p>

##### Instances
``` purescript
Newtype InvalidInputCombinationException _
Generic InvalidInputCombinationException _
Show InvalidInputCombinationException
Decode InvalidInputCombinationException
Encode InvalidInputCombinationException
```

#### `newInvalidInputCombinationException`

``` purescript
newInvalidInputCombinationException :: InvalidInputCombinationException
```

Constructs InvalidInputCombinationException from required parameters

#### `newInvalidInputCombinationException'`

``` purescript
newInvalidInputCombinationException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidInputCombinationException
```

Constructs InvalidInputCombinationException's fields from required parameters

#### `InvalidJobStateException`

``` purescript
newtype InvalidJobStateException
  = InvalidJobStateException { "Message" :: NullOrUndefined (String) }
```

<p>The action can't be performed because the job's current state doesn't allow that action to be performed.</p>

##### Instances
``` purescript
Newtype InvalidJobStateException _
Generic InvalidJobStateException _
Show InvalidJobStateException
Decode InvalidJobStateException
Encode InvalidJobStateException
```

#### `newInvalidJobStateException`

``` purescript
newInvalidJobStateException :: InvalidJobStateException
```

Constructs InvalidJobStateException from required parameters

#### `newInvalidJobStateException'`

``` purescript
newInvalidJobStateException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidJobStateException
```

Constructs InvalidJobStateException's fields from required parameters

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException { "Message" :: NullOrUndefined (String) }
```

<p>The <code>NextToken</code> string was altered unexpectedly, and the operation has stopped. Run the operation without changing the <code>NextToken</code> string, and try again.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `newInvalidNextTokenException`

``` purescript
newInvalidNextTokenException :: InvalidNextTokenException
```

Constructs InvalidNextTokenException from required parameters

#### `newInvalidNextTokenException'`

``` purescript
newInvalidNextTokenException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidNextTokenException
```

Constructs InvalidNextTokenException's fields from required parameters

#### `InvalidResourceException`

``` purescript
newtype InvalidResourceException
  = InvalidResourceException { "Message" :: NullOrUndefined (String) }
```

<p>The specified resource can't be found. Check the information you provided in your last request, and try again.</p>

##### Instances
``` purescript
Newtype InvalidResourceException _
Generic InvalidResourceException _
Show InvalidResourceException
Decode InvalidResourceException
Encode InvalidResourceException
```

#### `newInvalidResourceException`

``` purescript
newInvalidResourceException :: InvalidResourceException
```

Constructs InvalidResourceException from required parameters

#### `newInvalidResourceException'`

``` purescript
newInvalidResourceException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> InvalidResourceException
```

Constructs InvalidResourceException's fields from required parameters

#### `JobId`

``` purescript
newtype JobId
  = JobId String
```

##### Instances
``` purescript
Newtype JobId _
Generic JobId _
Show JobId
Decode JobId
Encode JobId
```

#### `JobListEntry`

``` purescript
newtype JobListEntry
  = JobListEntry { "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "IsMaster" :: NullOrUndefined (Boolean), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) }
```

<p>Each <code>JobListEntry</code> object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of an export job.</p>

##### Instances
``` purescript
Newtype JobListEntry _
Generic JobListEntry _
Show JobListEntry
Decode JobListEntry
Encode JobListEntry
```

#### `newJobListEntry`

``` purescript
newJobListEntry :: JobListEntry
```

Constructs JobListEntry from required parameters

#### `newJobListEntry'`

``` purescript
newJobListEntry' :: ({ "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "IsMaster" :: NullOrUndefined (Boolean), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) } -> { "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "IsMaster" :: NullOrUndefined (Boolean), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Description" :: NullOrUndefined (String) }) -> JobListEntry
```

Constructs JobListEntry's fields from required parameters

#### `JobListEntryList`

``` purescript
newtype JobListEntryList
  = JobListEntryList (Array JobListEntry)
```

##### Instances
``` purescript
Newtype JobListEntryList _
Generic JobListEntryList _
Show JobListEntryList
Decode JobListEntryList
Encode JobListEntryList
```

#### `JobLogs`

``` purescript
newtype JobLogs
  = JobLogs { "JobCompletionReportURI" :: NullOrUndefined (String), "JobSuccessLogURI" :: NullOrUndefined (String), "JobFailureLogURI" :: NullOrUndefined (String) }
```

<p>Contains job logs. Whenever Snowball is used to import data into or export data out of Amazon S3, you'll have the option of downloading a PDF job report. Job logs are returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type. The job logs can be accessed for up to 60 minutes after this request has been made. To access any of the job logs after 60 minutes have passed, you'll have to make another call to the <code>DescribeJob</code> action.</p> <p>For import jobs, the PDF job report becomes available at the end of the import process. For export jobs, your job report typically becomes available while the Snowball for your job part is being delivered to you.</p> <p>The job report provides you insight into the state of your Amazon S3 data transfer. The report includes details about your job or job part for your records.</p> <p>For deeper visibility into the status of your transferred objects, you can look at the two associated logs: a success log and a failure log. The logs are saved in comma-separated value (CSV) format, and the name of each log includes the ID of the job or job part that the log describes.</p>

##### Instances
``` purescript
Newtype JobLogs _
Generic JobLogs _
Show JobLogs
Decode JobLogs
Encode JobLogs
```

#### `newJobLogs`

``` purescript
newJobLogs :: JobLogs
```

Constructs JobLogs from required parameters

#### `newJobLogs'`

``` purescript
newJobLogs' :: ({ "JobCompletionReportURI" :: NullOrUndefined (String), "JobSuccessLogURI" :: NullOrUndefined (String), "JobFailureLogURI" :: NullOrUndefined (String) } -> { "JobCompletionReportURI" :: NullOrUndefined (String), "JobSuccessLogURI" :: NullOrUndefined (String), "JobFailureLogURI" :: NullOrUndefined (String) }) -> JobLogs
```

Constructs JobLogs's fields from required parameters

#### `JobMetadata`

``` purescript
newtype JobMetadata
  = JobMetadata { "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "AddressId" :: NullOrUndefined (AddressId), "ShippingDetails" :: NullOrUndefined (ShippingDetails), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "Notification" :: NullOrUndefined (Notification), "DataTransferProgress" :: NullOrUndefined (DataTransfer), "JobLogInfo" :: NullOrUndefined (JobLogs), "ClusterId" :: NullOrUndefined (String), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

<p>Contains information about a specific job including shipping information, job status, and other important metadata. This information is returned as a part of the response syntax of the <code>DescribeJob</code> action.</p>

##### Instances
``` purescript
Newtype JobMetadata _
Generic JobMetadata _
Show JobMetadata
Decode JobMetadata
Encode JobMetadata
```

#### `newJobMetadata`

``` purescript
newJobMetadata :: JobMetadata
```

Constructs JobMetadata from required parameters

#### `newJobMetadata'`

``` purescript
newJobMetadata' :: ({ "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "AddressId" :: NullOrUndefined (AddressId), "ShippingDetails" :: NullOrUndefined (ShippingDetails), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "Notification" :: NullOrUndefined (Notification), "DataTransferProgress" :: NullOrUndefined (DataTransfer), "JobLogInfo" :: NullOrUndefined (JobLogs), "ClusterId" :: NullOrUndefined (String), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "JobId" :: NullOrUndefined (String), "JobState" :: NullOrUndefined (JobState), "JobType" :: NullOrUndefined (JobType), "SnowballType" :: NullOrUndefined (SnowballType), "CreationDate" :: NullOrUndefined (Timestamp), "Resources" :: NullOrUndefined (JobResource), "Description" :: NullOrUndefined (String), "KmsKeyARN" :: NullOrUndefined (KmsKeyARN), "RoleARN" :: NullOrUndefined (RoleARN), "AddressId" :: NullOrUndefined (AddressId), "ShippingDetails" :: NullOrUndefined (ShippingDetails), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "Notification" :: NullOrUndefined (Notification), "DataTransferProgress" :: NullOrUndefined (DataTransfer), "JobLogInfo" :: NullOrUndefined (JobLogs), "ClusterId" :: NullOrUndefined (String), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> JobMetadata
```

Constructs JobMetadata's fields from required parameters

#### `JobMetadataList`

``` purescript
newtype JobMetadataList
  = JobMetadataList (Array JobMetadata)
```

##### Instances
``` purescript
Newtype JobMetadataList _
Generic JobMetadataList _
Show JobMetadataList
Decode JobMetadataList
Encode JobMetadataList
```

#### `JobResource`

``` purescript
newtype JobResource
  = JobResource { "S3Resources" :: NullOrUndefined (S3ResourceList), "LambdaResources" :: NullOrUndefined (LambdaResourceList) }
```

<p>Contains an array of <code>S3Resource</code> objects. Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into.</p>

##### Instances
``` purescript
Newtype JobResource _
Generic JobResource _
Show JobResource
Decode JobResource
Encode JobResource
```

#### `newJobResource`

``` purescript
newJobResource :: JobResource
```

Constructs JobResource from required parameters

#### `newJobResource'`

``` purescript
newJobResource' :: ({ "S3Resources" :: NullOrUndefined (S3ResourceList), "LambdaResources" :: NullOrUndefined (LambdaResourceList) } -> { "S3Resources" :: NullOrUndefined (S3ResourceList), "LambdaResources" :: NullOrUndefined (LambdaResourceList) }) -> JobResource
```

Constructs JobResource's fields from required parameters

#### `JobState`

``` purescript
newtype JobState
  = JobState String
```

##### Instances
``` purescript
Newtype JobState _
Generic JobState _
Show JobState
Decode JobState
Encode JobState
```

#### `JobStateList`

``` purescript
newtype JobStateList
  = JobStateList (Array JobState)
```

##### Instances
``` purescript
Newtype JobStateList _
Generic JobStateList _
Show JobStateList
Decode JobStateList
Encode JobStateList
```

#### `JobType`

``` purescript
newtype JobType
  = JobType String
```

##### Instances
``` purescript
Newtype JobType _
Generic JobType _
Show JobType
Decode JobType
Encode JobType
```

#### `KMSRequestFailedException`

``` purescript
newtype KMSRequestFailedException
  = KMSRequestFailedException { "Message" :: NullOrUndefined (String) }
```

<p>The provided AWS Key Management Service key lacks the permissions to perform the specified <a>CreateJob</a> or <a>UpdateJob</a> action.</p>

##### Instances
``` purescript
Newtype KMSRequestFailedException _
Generic KMSRequestFailedException _
Show KMSRequestFailedException
Decode KMSRequestFailedException
Encode KMSRequestFailedException
```

#### `newKMSRequestFailedException`

``` purescript
newKMSRequestFailedException :: KMSRequestFailedException
```

Constructs KMSRequestFailedException from required parameters

#### `newKMSRequestFailedException'`

``` purescript
newKMSRequestFailedException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> KMSRequestFailedException
```

Constructs KMSRequestFailedException's fields from required parameters

#### `KeyRange`

``` purescript
newtype KeyRange
  = KeyRange { "BeginMarker" :: NullOrUndefined (String), "EndMarker" :: NullOrUndefined (String) }
```

<p>Contains a key range. For export jobs, a <code>S3Resource</code> object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>

##### Instances
``` purescript
Newtype KeyRange _
Generic KeyRange _
Show KeyRange
Decode KeyRange
Encode KeyRange
```

#### `newKeyRange`

``` purescript
newKeyRange :: KeyRange
```

Constructs KeyRange from required parameters

#### `newKeyRange'`

``` purescript
newKeyRange' :: ({ "BeginMarker" :: NullOrUndefined (String), "EndMarker" :: NullOrUndefined (String) } -> { "BeginMarker" :: NullOrUndefined (String), "EndMarker" :: NullOrUndefined (String) }) -> KeyRange
```

Constructs KeyRange's fields from required parameters

#### `KmsKeyARN`

``` purescript
newtype KmsKeyARN
  = KmsKeyARN String
```

##### Instances
``` purescript
Newtype KmsKeyARN _
Generic KmsKeyARN _
Show KmsKeyARN
Decode KmsKeyARN
Encode KmsKeyARN
```

#### `LambdaResource`

``` purescript
newtype LambdaResource
  = LambdaResource { "LambdaArn" :: NullOrUndefined (ResourceARN), "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList) }
```

<p>Identifies </p>

##### Instances
``` purescript
Newtype LambdaResource _
Generic LambdaResource _
Show LambdaResource
Decode LambdaResource
Encode LambdaResource
```

#### `newLambdaResource`

``` purescript
newLambdaResource :: LambdaResource
```

Constructs LambdaResource from required parameters

#### `newLambdaResource'`

``` purescript
newLambdaResource' :: ({ "LambdaArn" :: NullOrUndefined (ResourceARN), "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList) } -> { "LambdaArn" :: NullOrUndefined (ResourceARN), "EventTriggers" :: NullOrUndefined (EventTriggerDefinitionList) }) -> LambdaResource
```

Constructs LambdaResource's fields from required parameters

#### `LambdaResourceList`

``` purescript
newtype LambdaResourceList
  = LambdaResourceList (Array LambdaResource)
```

##### Instances
``` purescript
Newtype LambdaResourceList _
Generic LambdaResourceList _
Show LambdaResourceList
Decode LambdaResourceList
Encode LambdaResourceList
```

#### `ListClusterJobsRequest`

``` purescript
newtype ListClusterJobsRequest
  = ListClusterJobsRequest { "ClusterId" :: ClusterId, "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListClusterJobsRequest _
Generic ListClusterJobsRequest _
Show ListClusterJobsRequest
Decode ListClusterJobsRequest
Encode ListClusterJobsRequest
```

#### `newListClusterJobsRequest`

``` purescript
newListClusterJobsRequest :: ClusterId -> ListClusterJobsRequest
```

Constructs ListClusterJobsRequest from required parameters

#### `newListClusterJobsRequest'`

``` purescript
newListClusterJobsRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId, "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) } -> { "ClusterId" :: ClusterId, "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }) -> ListClusterJobsRequest
```

Constructs ListClusterJobsRequest's fields from required parameters

#### `ListClusterJobsResult`

``` purescript
newtype ListClusterJobsResult
  = ListClusterJobsResult { "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListClusterJobsResult _
Generic ListClusterJobsResult _
Show ListClusterJobsResult
Decode ListClusterJobsResult
Encode ListClusterJobsResult
```

#### `newListClusterJobsResult`

``` purescript
newListClusterJobsResult :: ListClusterJobsResult
```

Constructs ListClusterJobsResult from required parameters

#### `newListClusterJobsResult'`

``` purescript
newListClusterJobsResult' :: ({ "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) } -> { "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) }) -> ListClusterJobsResult
```

Constructs ListClusterJobsResult's fields from required parameters

#### `ListClustersRequest`

``` purescript
newtype ListClustersRequest
  = ListClustersRequest { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListClustersRequest _
Generic ListClustersRequest _
Show ListClustersRequest
Decode ListClustersRequest
Encode ListClustersRequest
```

#### `newListClustersRequest`

``` purescript
newListClustersRequest :: ListClustersRequest
```

Constructs ListClustersRequest from required parameters

#### `newListClustersRequest'`

``` purescript
newListClustersRequest' :: ({ "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) } -> { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }) -> ListClustersRequest
```

Constructs ListClustersRequest's fields from required parameters

#### `ListClustersResult`

``` purescript
newtype ListClustersResult
  = ListClustersResult { "ClusterListEntries" :: NullOrUndefined (ClusterListEntryList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListClustersResult _
Generic ListClustersResult _
Show ListClustersResult
Decode ListClustersResult
Encode ListClustersResult
```

#### `newListClustersResult`

``` purescript
newListClustersResult :: ListClustersResult
```

Constructs ListClustersResult from required parameters

#### `newListClustersResult'`

``` purescript
newListClustersResult' :: ({ "ClusterListEntries" :: NullOrUndefined (ClusterListEntryList), "NextToken" :: NullOrUndefined (String) } -> { "ClusterListEntries" :: NullOrUndefined (ClusterListEntryList), "NextToken" :: NullOrUndefined (String) }) -> ListClustersResult
```

Constructs ListClustersResult's fields from required parameters

#### `ListJobsRequest`

``` purescript
newtype ListJobsRequest
  = ListJobsRequest { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobsRequest _
Generic ListJobsRequest _
Show ListJobsRequest
Decode ListJobsRequest
Encode ListJobsRequest
```

#### `newListJobsRequest`

``` purescript
newListJobsRequest :: ListJobsRequest
```

Constructs ListJobsRequest from required parameters

#### `newListJobsRequest'`

``` purescript
newListJobsRequest' :: ({ "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) } -> { "MaxResults" :: NullOrUndefined (ListLimit), "NextToken" :: NullOrUndefined (String) }) -> ListJobsRequest
```

Constructs ListJobsRequest's fields from required parameters

#### `ListJobsResult`

``` purescript
newtype ListJobsResult
  = ListJobsResult { "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) }
```

##### Instances
``` purescript
Newtype ListJobsResult _
Generic ListJobsResult _
Show ListJobsResult
Decode ListJobsResult
Encode ListJobsResult
```

#### `newListJobsResult`

``` purescript
newListJobsResult :: ListJobsResult
```

Constructs ListJobsResult from required parameters

#### `newListJobsResult'`

``` purescript
newListJobsResult' :: ({ "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) } -> { "JobListEntries" :: NullOrUndefined (JobListEntryList), "NextToken" :: NullOrUndefined (String) }) -> ListJobsResult
```

Constructs ListJobsResult's fields from required parameters

#### `ListLimit`

``` purescript
newtype ListLimit
  = ListLimit Int
```

##### Instances
``` purescript
Newtype ListLimit _
Generic ListLimit _
Show ListLimit
Decode ListLimit
Encode ListLimit
```

#### `Notification`

``` purescript
newtype Notification
  = Notification { "SnsTopicARN" :: NullOrUndefined (SnsTopicARN), "JobStatesToNotify" :: NullOrUndefined (JobStateList), "NotifyAll" :: NullOrUndefined (Boolean) }
```

<p>The Amazon Simple Notification Service (Amazon SNS) notification settings associated with a specific job. The <code>Notification</code> object is returned as a part of the response syntax of the <code>DescribeJob</code> action in the <code>JobMetadata</code> data type.</p> <p>When the notification settings are defined during job creation, you can choose to notify based on a specific set of job states using the <code>JobStatesToNotify</code> array of strings, or you can specify that you want to have Amazon SNS notifications sent out for all job states with <code>NotifyAll</code> set to true.</p>

##### Instances
``` purescript
Newtype Notification _
Generic Notification _
Show Notification
Decode Notification
Encode Notification
```

#### `newNotification`

``` purescript
newNotification :: Notification
```

Constructs Notification from required parameters

#### `newNotification'`

``` purescript
newNotification' :: ({ "SnsTopicARN" :: NullOrUndefined (SnsTopicARN), "JobStatesToNotify" :: NullOrUndefined (JobStateList), "NotifyAll" :: NullOrUndefined (Boolean) } -> { "SnsTopicARN" :: NullOrUndefined (SnsTopicARN), "JobStatesToNotify" :: NullOrUndefined (JobStateList), "NotifyAll" :: NullOrUndefined (Boolean) }) -> Notification
```

Constructs Notification's fields from required parameters

#### `ResourceARN`

``` purescript
newtype ResourceARN
  = ResourceARN String
```

##### Instances
``` purescript
Newtype ResourceARN _
Generic ResourceARN _
Show ResourceARN
Decode ResourceARN
Encode ResourceARN
```

#### `RoleARN`

``` purescript
newtype RoleARN
  = RoleARN String
```

##### Instances
``` purescript
Newtype RoleARN _
Generic RoleARN _
Show RoleARN
Decode RoleARN
Encode RoleARN
```

#### `S3Resource`

``` purescript
newtype S3Resource
  = S3Resource { "BucketArn" :: NullOrUndefined (ResourceARN), "KeyRange" :: NullOrUndefined (KeyRange) }
```

<p>Each <code>S3Resource</code> object represents an Amazon S3 bucket that your transferred data will be exported from or imported into. For export jobs, this object can have an optional <code>KeyRange</code> value. The length of the range is defined at job creation, and has either an inclusive <code>BeginMarker</code>, an inclusive <code>EndMarker</code>, or both. Ranges are UTF-8 binary sorted.</p>

##### Instances
``` purescript
Newtype S3Resource _
Generic S3Resource _
Show S3Resource
Decode S3Resource
Encode S3Resource
```

#### `newS3Resource`

``` purescript
newS3Resource :: S3Resource
```

Constructs S3Resource from required parameters

#### `newS3Resource'`

``` purescript
newS3Resource' :: ({ "BucketArn" :: NullOrUndefined (ResourceARN), "KeyRange" :: NullOrUndefined (KeyRange) } -> { "BucketArn" :: NullOrUndefined (ResourceARN), "KeyRange" :: NullOrUndefined (KeyRange) }) -> S3Resource
```

Constructs S3Resource's fields from required parameters

#### `S3ResourceList`

``` purescript
newtype S3ResourceList
  = S3ResourceList (Array S3Resource)
```

##### Instances
``` purescript
Newtype S3ResourceList _
Generic S3ResourceList _
Show S3ResourceList
Decode S3ResourceList
Encode S3ResourceList
```

#### `Shipment`

``` purescript
newtype Shipment
  = Shipment { "Status" :: NullOrUndefined (String), "TrackingNumber" :: NullOrUndefined (String) }
```

<p>The <code>Status</code> and <code>TrackingNumber</code> information for an inbound or outbound shipment.</p>

##### Instances
``` purescript
Newtype Shipment _
Generic Shipment _
Show Shipment
Decode Shipment
Encode Shipment
```

#### `newShipment`

``` purescript
newShipment :: Shipment
```

Constructs Shipment from required parameters

#### `newShipment'`

``` purescript
newShipment' :: ({ "Status" :: NullOrUndefined (String), "TrackingNumber" :: NullOrUndefined (String) } -> { "Status" :: NullOrUndefined (String), "TrackingNumber" :: NullOrUndefined (String) }) -> Shipment
```

Constructs Shipment's fields from required parameters

#### `ShippingDetails`

``` purescript
newtype ShippingDetails
  = ShippingDetails { "ShippingOption" :: NullOrUndefined (ShippingOption), "InboundShipment" :: NullOrUndefined (Shipment), "OutboundShipment" :: NullOrUndefined (Shipment) }
```

<p>A job's shipping information, including inbound and outbound tracking numbers and shipping speed options.</p>

##### Instances
``` purescript
Newtype ShippingDetails _
Generic ShippingDetails _
Show ShippingDetails
Decode ShippingDetails
Encode ShippingDetails
```

#### `newShippingDetails`

``` purescript
newShippingDetails :: ShippingDetails
```

Constructs ShippingDetails from required parameters

#### `newShippingDetails'`

``` purescript
newShippingDetails' :: ({ "ShippingOption" :: NullOrUndefined (ShippingOption), "InboundShipment" :: NullOrUndefined (Shipment), "OutboundShipment" :: NullOrUndefined (Shipment) } -> { "ShippingOption" :: NullOrUndefined (ShippingOption), "InboundShipment" :: NullOrUndefined (Shipment), "OutboundShipment" :: NullOrUndefined (Shipment) }) -> ShippingDetails
```

Constructs ShippingDetails's fields from required parameters

#### `ShippingOption`

``` purescript
newtype ShippingOption
  = ShippingOption String
```

##### Instances
``` purescript
Newtype ShippingOption _
Generic ShippingOption _
Show ShippingOption
Decode ShippingOption
Encode ShippingOption
```

#### `SnowballCapacity`

``` purescript
newtype SnowballCapacity
  = SnowballCapacity String
```

##### Instances
``` purescript
Newtype SnowballCapacity _
Generic SnowballCapacity _
Show SnowballCapacity
Decode SnowballCapacity
Encode SnowballCapacity
```

#### `SnowballType`

``` purescript
newtype SnowballType
  = SnowballType String
```

##### Instances
``` purescript
Newtype SnowballType _
Generic SnowballType _
Show SnowballType
Decode SnowballType
Encode SnowballType
```

#### `SnsTopicARN`

``` purescript
newtype SnsTopicARN
  = SnsTopicARN String
```

##### Instances
``` purescript
Newtype SnsTopicARN _
Generic SnsTopicARN _
Show SnsTopicARN
Decode SnsTopicARN
Encode SnsTopicARN
```

#### `UnsupportedAddressException`

``` purescript
newtype UnsupportedAddressException
  = UnsupportedAddressException { "Message" :: NullOrUndefined (String) }
```

<p>The address is either outside the serviceable area for your region, or an error occurred. Check the address with your region's carrier and try again. If the issue persists, contact AWS Support.</p>

##### Instances
``` purescript
Newtype UnsupportedAddressException _
Generic UnsupportedAddressException _
Show UnsupportedAddressException
Decode UnsupportedAddressException
Encode UnsupportedAddressException
```

#### `newUnsupportedAddressException`

``` purescript
newUnsupportedAddressException :: UnsupportedAddressException
```

Constructs UnsupportedAddressException from required parameters

#### `newUnsupportedAddressException'`

``` purescript
newUnsupportedAddressException' :: ({ "Message" :: NullOrUndefined (String) } -> { "Message" :: NullOrUndefined (String) }) -> UnsupportedAddressException
```

Constructs UnsupportedAddressException's fields from required parameters

#### `UpdateClusterRequest`

``` purescript
newtype UpdateClusterRequest
  = UpdateClusterRequest { "ClusterId" :: ClusterId, "RoleARN" :: NullOrUndefined (RoleARN), "Description" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

##### Instances
``` purescript
Newtype UpdateClusterRequest _
Generic UpdateClusterRequest _
Show UpdateClusterRequest
Decode UpdateClusterRequest
Encode UpdateClusterRequest
```

#### `newUpdateClusterRequest`

``` purescript
newUpdateClusterRequest :: ClusterId -> UpdateClusterRequest
```

Constructs UpdateClusterRequest from required parameters

#### `newUpdateClusterRequest'`

``` purescript
newUpdateClusterRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId, "RoleARN" :: NullOrUndefined (RoleARN), "Description" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "ClusterId" :: ClusterId, "RoleARN" :: NullOrUndefined (RoleARN), "Description" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Notification" :: NullOrUndefined (Notification), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> UpdateClusterRequest
```

Constructs UpdateClusterRequest's fields from required parameters

#### `UpdateClusterResult`

``` purescript
newtype UpdateClusterResult
  = UpdateClusterResult NoArguments
```

##### Instances
``` purescript
Newtype UpdateClusterResult _
Generic UpdateClusterResult _
Show UpdateClusterResult
Decode UpdateClusterResult
Encode UpdateClusterResult
```

#### `UpdateJobRequest`

``` purescript
newtype UpdateJobRequest
  = UpdateJobRequest { "JobId" :: JobId, "RoleARN" :: NullOrUndefined (RoleARN), "Notification" :: NullOrUndefined (Notification), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Description" :: NullOrUndefined (String), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ForwardingAddressId" :: NullOrUndefined (AddressId) }
```

##### Instances
``` purescript
Newtype UpdateJobRequest _
Generic UpdateJobRequest _
Show UpdateJobRequest
Decode UpdateJobRequest
Encode UpdateJobRequest
```

#### `newUpdateJobRequest`

``` purescript
newUpdateJobRequest :: JobId -> UpdateJobRequest
```

Constructs UpdateJobRequest from required parameters

#### `newUpdateJobRequest'`

``` purescript
newUpdateJobRequest' :: JobId -> ({ "JobId" :: JobId, "RoleARN" :: NullOrUndefined (RoleARN), "Notification" :: NullOrUndefined (Notification), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Description" :: NullOrUndefined (String), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ForwardingAddressId" :: NullOrUndefined (AddressId) } -> { "JobId" :: JobId, "RoleARN" :: NullOrUndefined (RoleARN), "Notification" :: NullOrUndefined (Notification), "Resources" :: NullOrUndefined (JobResource), "AddressId" :: NullOrUndefined (AddressId), "ShippingOption" :: NullOrUndefined (ShippingOption), "Description" :: NullOrUndefined (String), "SnowballCapacityPreference" :: NullOrUndefined (SnowballCapacity), "ForwardingAddressId" :: NullOrUndefined (AddressId) }) -> UpdateJobRequest
```

Constructs UpdateJobRequest's fields from required parameters

#### `UpdateJobResult`

``` purescript
newtype UpdateJobResult
  = UpdateJobResult NoArguments
```

##### Instances
``` purescript
Newtype UpdateJobResult _
Generic UpdateJobResult _
Show UpdateJobResult
Decode UpdateJobResult
Encode UpdateJobResult
```


