=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::ClickSendClient::EmailMarketingApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::ClickSendClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::ClickSendClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::ClickSendClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# allowed_email_address_get
#
# Get all email addresses
# 
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page number',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Number of records per page',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'allowed_email_address_get' } = { 
    	summary => 'Get all email addresses',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub allowed_email_address_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/email/addresses';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# allowed_email_address_post
#
# Create allowed Email Address
# 
# @param string $email_address Email to be allowed. (required)
{
    my $params = {
    'email_address' => {
        data_type => 'string',
        description => 'Email to be allowed.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'allowed_email_address_post' } = { 
    	summary => 'Create allowed Email Address',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub allowed_email_address_post {
    my ($self, %args) = @_;

    # verify the required parameter 'email_address' is set
    unless (exists $args{'email_address'}) {
      croak("Missing the required parameter 'email_address' when calling allowed_email_address_post");
    }

    # parse inputs
    my $_resource_path = '/email/addresses';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'email_address'} ) {
                $form_params->{'email_address'} = $self->{api_client}->to_form_value($args{'email_address'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# cancel_email_campaign_put
#
# Cancel email campaign
# 
# @param int $email_campaign_id Allowed email campaign id (required)
{
    my $params = {
    'email_campaign_id' => {
        data_type => 'int',
        description => 'Allowed email campaign id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cancel_email_campaign_put' } = { 
    	summary => 'Cancel email campaign',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub cancel_email_campaign_put {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign_id' is set
    unless (exists $args{'email_campaign_id'}) {
      croak("Missing the required parameter 'email_campaign_id' when calling cancel_email_campaign_put");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/{email_campaign_id}/cancel';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_campaign_id'}) {
        my $_base_variable = "{" . "email_campaign_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_campaign_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_get
#
# Get specific email campaign
# 
# @param int $email_campaign_id Allowed email campaign id (required)
{
    my $params = {
    'email_campaign_id' => {
        data_type => 'int',
        description => 'Allowed email campaign id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_get' } = { 
    	summary => 'Get specific email campaign',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign_id' is set
    unless (exists $args{'email_campaign_id'}) {
      croak("Missing the required parameter 'email_campaign_id' when calling email_campaign_get");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/{email_campaign_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_campaign_id'}) {
        my $_base_variable = "{" . "email_campaign_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_campaign_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_history_export_get
#
# Export specific email campaign history
# 
# @param int $email_campaign_id Allowed email campaign id (required)
# @param int $date_from Start date (optional)
# @param int $date_to End date (optional)
{
    my $params = {
    'email_campaign_id' => {
        data_type => 'int',
        description => 'Allowed email campaign id',
        required => '1',
    },
    'date_from' => {
        data_type => 'int',
        description => 'Start date',
        required => '0',
    },
    'date_to' => {
        data_type => 'int',
        description => 'End date',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_history_export_get' } = { 
    	summary => 'Export specific email campaign history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_history_export_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign_id' is set
    unless (exists $args{'email_campaign_id'}) {
      croak("Missing the required parameter 'email_campaign_id' when calling email_campaign_history_export_get");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/{email_campaign_id}/history/export';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'date_from'}) {
        $query_params->{'date_from'} = $self->{api_client}->to_query_value($args{'date_from'});
    }

    # query params
    if ( exists $args{'date_to'}) {
        $query_params->{'date_to'} = $self->{api_client}->to_query_value($args{'date_to'});
    }

    # path params
    if ( exists $args{'email_campaign_id'}) {
        my $_base_variable = "{" . "email_campaign_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_campaign_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_history_get
#
# Get specific email campaign history
# 
# @param int $email_campaign_id Allowed email campaign id (required)
# @param int $date_from Start date (optional)
# @param int $date_to End date (optional)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'email_campaign_id' => {
        data_type => 'int',
        description => 'Allowed email campaign id',
        required => '1',
    },
    'date_from' => {
        data_type => 'int',
        description => 'Start date',
        required => '0',
    },
    'date_to' => {
        data_type => 'int',
        description => 'End date',
        required => '0',
    },
    'page' => {
        data_type => 'int',
        description => 'Page number',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Number of records per page',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_history_get' } = { 
    	summary => 'Get specific email campaign history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_history_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign_id' is set
    unless (exists $args{'email_campaign_id'}) {
      croak("Missing the required parameter 'email_campaign_id' when calling email_campaign_history_get");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/{email_campaign_id}/history';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'date_from'}) {
        $query_params->{'date_from'} = $self->{api_client}->to_query_value($args{'date_from'});
    }

    # query params
    if ( exists $args{'date_to'}) {
        $query_params->{'date_to'} = $self->{api_client}->to_query_value($args{'date_to'});
    }

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # path params
    if ( exists $args{'email_campaign_id'}) {
        my $_base_variable = "{" . "email_campaign_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_campaign_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_post
#
# Send email campaign
# 
# @param EmailCampaign $email_campaign Email model (required)
{
    my $params = {
    'email_campaign' => {
        data_type => 'EmailCampaign',
        description => 'Email model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_post' } = { 
    	summary => 'Send email campaign',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_post {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign' is set
    unless (exists $args{'email_campaign'}) {
      croak("Missing the required parameter 'email_campaign' when calling email_campaign_post");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/send';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'email_campaign'}) {
        $_body_data = $args{'email_campaign'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_price_post
#
# Calculate email campaign price
# 
# @param EmailCampaign $email_campaign Email model (required)
{
    my $params = {
    'email_campaign' => {
        data_type => 'EmailCampaign',
        description => 'Email model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_price_post' } = { 
    	summary => 'Calculate email campaign price',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_price_post {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign' is set
    unless (exists $args{'email_campaign'}) {
      croak("Missing the required parameter 'email_campaign' when calling email_campaign_price_post");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/price';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'email_campaign'}) {
        $_body_data = $args{'email_campaign'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaign_put
#
# Edit email campaign
# 
# @param int $email_campaign_id Allowed email campaign id (required)
# @param EmailCampaign $email_campaign Email model (required)
{
    my $params = {
    'email_campaign_id' => {
        data_type => 'int',
        description => 'Allowed email campaign id',
        required => '1',
    },
    'email_campaign' => {
        data_type => 'EmailCampaign',
        description => 'Email model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaign_put' } = { 
    	summary => 'Edit email campaign',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaign_put {
    my ($self, %args) = @_;

    # verify the required parameter 'email_campaign_id' is set
    unless (exists $args{'email_campaign_id'}) {
      croak("Missing the required parameter 'email_campaign_id' when calling email_campaign_put");
    }

    # verify the required parameter 'email_campaign' is set
    unless (exists $args{'email_campaign'}) {
      croak("Missing the required parameter 'email_campaign' when calling email_campaign_put");
    }

    # parse inputs
    my $_resource_path = '/email-campaigns/{email_campaign_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_campaign_id'}) {
        my $_base_variable = "{" . "email_campaign_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_campaign_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'email_campaign'}) {
        $_body_data = $args{'email_campaign'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# email_campaigns_get
#
# Get all email campaigns
# 
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'page' => {
        data_type => 'int',
        description => 'Page number',
        required => '0',
    },
    'limit' => {
        data_type => 'int',
        description => 'Number of records per page',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'email_campaigns_get' } = { 
    	summary => 'Get all email campaigns',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub email_campaigns_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/email-campaigns';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
    }

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# send_verification_token_get
#
# Send verification token
# 
# @param int $email_address_id Allowed email address id (required)
{
    my $params = {
    'email_address_id' => {
        data_type => 'int',
        description => 'Allowed email address id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'send_verification_token_get' } = { 
    	summary => 'Send verification token',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub send_verification_token_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_address_id' is set
    unless (exists $args{'email_address_id'}) {
      croak("Missing the required parameter 'email_address_id' when calling send_verification_token_get");
    }

    # parse inputs
    my $_resource_path = '/email/address-verify/{email_address_id}/send';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_address_id'}) {
        my $_base_variable = "{" . "email_address_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_address_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# specific_allowed_email_address_delete
#
# Delete specific email address
# 
# @param int $email_address_id Allowed email address id (required)
{
    my $params = {
    'email_address_id' => {
        data_type => 'int',
        description => 'Allowed email address id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'specific_allowed_email_address_delete' } = { 
    	summary => 'Delete specific email address',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub specific_allowed_email_address_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'email_address_id' is set
    unless (exists $args{'email_address_id'}) {
      croak("Missing the required parameter 'email_address_id' when calling specific_allowed_email_address_delete");
    }

    # parse inputs
    my $_resource_path = '/email/addresses/{email_address_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_address_id'}) {
        my $_base_variable = "{" . "email_address_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_address_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# specific_allowed_email_address_get
#
# Get specific email address
# 
# @param int $email_address_id Allowed email address id (required)
{
    my $params = {
    'email_address_id' => {
        data_type => 'int',
        description => 'Allowed email address id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'specific_allowed_email_address_get' } = { 
    	summary => 'Get specific email address',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub specific_allowed_email_address_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_address_id' is set
    unless (exists $args{'email_address_id'}) {
      croak("Missing the required parameter 'email_address_id' when calling specific_allowed_email_address_get");
    }

    # parse inputs
    my $_resource_path = '/email/addresses/{email_address_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_address_id'}) {
        my $_base_variable = "{" . "email_address_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_address_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# verify_allowed_email_address_get
#
# Verify email address using verification token
# 
# @param int $email_address_id Allowed email address id (required)
# @param string $activation_token Your activation token. (required)
{
    my $params = {
    'email_address_id' => {
        data_type => 'int',
        description => 'Allowed email address id',
        required => '1',
    },
    'activation_token' => {
        data_type => 'string',
        description => 'Your activation token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'verify_allowed_email_address_get' } = { 
    	summary => 'Verify email address using verification token',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub verify_allowed_email_address_get {
    my ($self, %args) = @_;

    # verify the required parameter 'email_address_id' is set
    unless (exists $args{'email_address_id'}) {
      croak("Missing the required parameter 'email_address_id' when calling verify_allowed_email_address_get");
    }

    # verify the required parameter 'activation_token' is set
    unless (exists $args{'activation_token'}) {
      croak("Missing the required parameter 'activation_token' when calling verify_allowed_email_address_get");
    }

    # parse inputs
    my $_resource_path = '/email/address-verify/{email_address_id}/verify/{activation_token}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'email_address_id'}) {
        my $_base_variable = "{" . "email_address_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'email_address_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'activation_token'}) {
        my $_base_variable = "{" . "activation_token" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'activation_token'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

1;
