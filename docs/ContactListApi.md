# WWW::ClickSendClient::ContactListApi

## Load the API package
```perl
use WWW::ClickSendClient::Object::ContactListApi;
```

All URIs are relative to *https://rest.clicksend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lists_by_list_id_delete**](ContactListApi.md#lists_by_list_id_delete) | **DELETE** /lists/{list_id} | ListsByListIdDelete
[**lists_by_list_id_get**](ContactListApi.md#lists_by_list_id_get) | **GET** /lists/{list_id} | Get specific contact list
[**lists_by_list_id_put**](ContactListApi.md#lists_by_list_id_put) | **PUT** /lists/{list_id} | Update specific contact list
[**lists_get**](ContactListApi.md#lists_get) | **GET** /lists | Get all contact lists
[**lists_import_by_list_id_post**](ContactListApi.md#lists_import_by_list_id_post) | **POST** /lists/{list_id}/import | Import contacts to list
[**lists_post**](ContactListApi.md#lists_post) | **POST** /lists | Create new contact list
[**lists_remove_duplicates_by_list_id_put**](ContactListApi.md#lists_remove_duplicates_by_list_id_put) | **PUT** /lists/{list_id}/remove-duplicates | Remove duplicate contacts


# **lists_by_list_id_delete**
> string lists_by_list_id_delete(list_id => $list_id)

ListsByListIdDelete

Delete a specific contact list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | List ID

eval { 
    my $result = $api_instance->lists_by_list_id_delete(list_id => $list_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_by_list_id_delete: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| List ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_by_list_id_get**
> string lists_by_list_id_get(list_id => $list_id)

Get specific contact list

Get specific contact list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | List ID

eval { 
    my $result = $api_instance->lists_by_list_id_get(list_id => $list_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_by_list_id_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| List ID | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_by_list_id_put**
> string lists_by_list_id_put(list_id => $list_id, contact_list => $contact_list)

Update specific contact list

Update specific contact list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Your list id
my $contact_list = WWW::ClickSendClient::Object::ContactList->new(); # ContactList | Contact list model

eval { 
    my $result = $api_instance->lists_by_list_id_put(list_id => $list_id, contact_list => $contact_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_by_list_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Your list id | 
 **contact_list** | [**ContactList**](ContactList.md)| Contact list model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_get**
> string lists_get(page => $page, limit => $limit)

Get all contact lists

Get all contact lists

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $page = 56; # int | Page number
my $limit = 56; # int | Number of records per page

eval { 
    my $result = $api_instance->lists_get(page => $page, limit => $limit);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 1]
 **limit** | **int**| Number of records per page | [optional] [default to 10]

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_import_by_list_id_post**
> string lists_import_by_list_id_post(list_id => $list_id, file => $file)

Import contacts to list

Import contacts to list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Your contact list id you want to access.
my $file = WWW::ClickSendClient::Object::ContactListImport->new(); # ContactListImport | ContactListImport model

eval { 
    my $result = $api_instance->lists_import_by_list_id_post(list_id => $list_id, file => $file);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_import_by_list_id_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Your contact list id you want to access. | 
 **file** | [**ContactListImport**](ContactListImport.md)| ContactListImport model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_post**
> string lists_post(contact_list => $contact_list)

Create new contact list

Create new contact list

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $contact_list = WWW::ClickSendClient::Object::ContactList->new(); # ContactList | Contact list model

eval { 
    my $result = $api_instance->lists_post(contact_list => $contact_list);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_post: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contact_list** | [**ContactList**](ContactList.md)| Contact list model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lists_remove_duplicates_by_list_id_put**
> string lists_remove_duplicates_by_list_id_put(list_id => $list_id, fields => $fields)

Remove duplicate contacts

Remove duplicate contacts

### Example 
```perl
use Data::Dumper;
use WWW::ClickSendClient::ContactListApi;
my $api_instance = WWW::ClickSendClient::ContactListApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
);

my $list_id = 56; # int | Your list id
my $fields = WWW::ClickSendClient::Object::Fields->new(); # Fields | Fields model

eval { 
    my $result = $api_instance->lists_remove_duplicates_by_list_id_put(list_id => $list_id, fields => $fields);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContactListApi->lists_remove_duplicates_by_list_id_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **int**| Your list id | 
 **fields** | [**Fields**](Fields.md)| Fields model | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

