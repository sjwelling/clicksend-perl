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
package WWW::ClickSendClient::SMSApi;

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
# sms_cancel_all_put
#
# Update all scheduled message as cancelled
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'sms_cancel_all_put' } = { 
    	summary => 'Update all scheduled message as cancelled',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_cancel_all_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/cancel-all';

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
# sms_cancel_by_message_id_put
#
# Update scheduled message as cancelled
# 
# @param string $message_id The message ID you want to cancel (required)
{
    my $params = {
    'message_id' => {
        data_type => 'string',
        description => 'The message ID you want to cancel',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_cancel_by_message_id_put' } = { 
    	summary => 'Update scheduled message as cancelled',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_cancel_by_message_id_put {
    my ($self, %args) = @_;

    # verify the required parameter 'message_id' is set
    unless (exists $args{'message_id'}) {
      croak("Missing the required parameter 'message_id' when calling sms_cancel_by_message_id_put");
    }

    # parse inputs
    my $_resource_path = '/sms/{message_id}/cancel';

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
    if ( exists $args{'message_id'}) {
        my $_base_variable = "{" . "message_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'message_id'});
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
# sms_history_export_get
#
# Export all sms history
# 
# @param string $filename Filename to download history as (required)
{
    my $params = {
    'filename' => {
        data_type => 'string',
        description => 'Filename to download history as',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_history_export_get' } = { 
    	summary => 'Export all sms history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_history_export_get {
    my ($self, %args) = @_;

    # verify the required parameter 'filename' is set
    unless (exists $args{'filename'}) {
      croak("Missing the required parameter 'filename' when calling sms_history_export_get");
    }

    # parse inputs
    my $_resource_path = '/sms/history/export';

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
    if ( exists $args{'filename'}) {
        $query_params->{'filename'} = $self->{api_client}->to_query_value($args{'filename'});
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
# sms_history_get
#
# Get all sms history
# 
# @param int $date_from Start date (optional)
# @param int $date_to End date (optional)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
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
    __PACKAGE__->method_documentation->{ 'sms_history_get' } = { 
    	summary => 'Get all sms history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_history_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/history';

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
# sms_inbound_get
#
# Get all inbound sms
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
    __PACKAGE__->method_documentation->{ 'sms_inbound_get' } = { 
    	summary => 'Get all inbound sms',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_inbound_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/inbound';

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
# sms_inbound_post
#
# Create inbound sms
# 
# @param Url $url Url model (required)
{
    my $params = {
    'url' => {
        data_type => 'Url',
        description => 'Url model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_inbound_post' } = { 
    	summary => 'Create inbound sms',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_inbound_post {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling sms_inbound_post");
    }

    # parse inputs
    my $_resource_path = '/sms/inbound';

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
    if ( exists $args{'url'}) {
        $_body_data = $args{'url'};
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
# sms_inbound_read_put
#
# Mark inbound SMS as read
# 
# @param string $date_before An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. (optional)
{
    my $params = {
    'date_before' => {
        data_type => 'string',
        description => 'An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_inbound_read_put' } = { 
    	summary => 'Mark inbound SMS as read',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_inbound_read_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/inbound-read';

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

    my $_body_data;
    # body params
    if ( exists $args{'date_before'}) {
        $_body_data = $args{'date_before'};
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
# sms_price_post
#
# Calculate sms price
# 
# @param SmsMessageCollection $sms_messages SmsMessageCollection model (required)
{
    my $params = {
    'sms_messages' => {
        data_type => 'SmsMessageCollection',
        description => 'SmsMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_price_post' } = { 
    	summary => 'Calculate sms price',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_price_post {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_messages' is set
    unless (exists $args{'sms_messages'}) {
      croak("Missing the required parameter 'sms_messages' when calling sms_price_post");
    }

    # parse inputs
    my $_resource_path = '/sms/price';

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
    if ( exists $args{'sms_messages'}) {
        $_body_data = $args{'sms_messages'};
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
# sms_receipts_by_message_id_get
#
# Get a Specific Delivery Receipt
# 
# @param string $message_id Message ID (required)
{
    my $params = {
    'message_id' => {
        data_type => 'string',
        description => 'Message ID',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_receipts_by_message_id_get' } = { 
    	summary => 'Get a Specific Delivery Receipt',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_receipts_by_message_id_get {
    my ($self, %args) = @_;

    # verify the required parameter 'message_id' is set
    unless (exists $args{'message_id'}) {
      croak("Missing the required parameter 'message_id' when calling sms_receipts_by_message_id_get");
    }

    # parse inputs
    my $_resource_path = '/sms/receipts/{message_id}';

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
    if ( exists $args{'message_id'}) {
        my $_base_variable = "{" . "message_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'message_id'});
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
# sms_receipts_get
#
# Get all delivery receipts
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
    __PACKAGE__->method_documentation->{ 'sms_receipts_get' } = { 
    	summary => 'Get all delivery receipts',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_receipts_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/receipts';

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
# sms_receipts_post
#
# Add a delivery receipt
# 
# @param Url $url Url model (required)
{
    my $params = {
    'url' => {
        data_type => 'Url',
        description => 'Url model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_receipts_post' } = { 
    	summary => 'Add a delivery receipt',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_receipts_post {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling sms_receipts_post");
    }

    # parse inputs
    my $_resource_path = '/sms/receipts';

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
    if ( exists $args{'url'}) {
        $_body_data = $args{'url'};
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
# sms_receipts_read_put
#
# Mark delivery receipts as read
# 
# @param string $date_before Mark all as read before this timestamp (optional)
{
    my $params = {
    'date_before' => {
        data_type => 'string',
        description => 'Mark all as read before this timestamp',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_receipts_read_put' } = { 
    	summary => 'Mark delivery receipts as read',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_receipts_read_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/receipts-read';

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

    my $_body_data;
    # body params
    if ( exists $args{'date_before'}) {
        $_body_data = $args{'date_before'};
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
# sms_send_post
#
# Send sms message(s)
# 
# @param SmsMessageCollection $sms_messages SmsMessageCollection model (required)
{
    my $params = {
    'sms_messages' => {
        data_type => 'SmsMessageCollection',
        description => 'SmsMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_send_post' } = { 
    	summary => 'Send sms message(s)',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_send_post {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_messages' is set
    unless (exists $args{'sms_messages'}) {
      croak("Missing the required parameter 'sms_messages' when calling sms_send_post");
    }

    # parse inputs
    my $_resource_path = '/sms/send';

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
    if ( exists $args{'sms_messages'}) {
        $_body_data = $args{'sms_messages'};
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
# sms_templates_by_template_id_delete
#
# Delete sms template
# 
# @param int $template_id Template id (required)
{
    my $params = {
    'template_id' => {
        data_type => 'int',
        description => 'Template id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_templates_by_template_id_delete' } = { 
    	summary => 'Delete sms template',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_templates_by_template_id_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'template_id' is set
    unless (exists $args{'template_id'}) {
      croak("Missing the required parameter 'template_id' when calling sms_templates_by_template_id_delete");
    }

    # parse inputs
    my $_resource_path = '/sms/templates/{template_id}';

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
    if ( exists $args{'template_id'}) {
        my $_base_variable = "{" . "template_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'template_id'});
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
# sms_templates_by_template_id_put
#
# Update sms template
# 
# @param int $template_id Template id (required)
# @param SmsTemplate $sms_template Template item (required)
{
    my $params = {
    'template_id' => {
        data_type => 'int',
        description => 'Template id',
        required => '1',
    },
    'sms_template' => {
        data_type => 'SmsTemplate',
        description => 'Template item',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_templates_by_template_id_put' } = { 
    	summary => 'Update sms template',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_templates_by_template_id_put {
    my ($self, %args) = @_;

    # verify the required parameter 'template_id' is set
    unless (exists $args{'template_id'}) {
      croak("Missing the required parameter 'template_id' when calling sms_templates_by_template_id_put");
    }

    # verify the required parameter 'sms_template' is set
    unless (exists $args{'sms_template'}) {
      croak("Missing the required parameter 'sms_template' when calling sms_templates_by_template_id_put");
    }

    # parse inputs
    my $_resource_path = '/sms/templates/{template_id}';

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
    if ( exists $args{'template_id'}) {
        my $_base_variable = "{" . "template_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'template_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'sms_template'}) {
        $_body_data = $args{'sms_template'};
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
# sms_templates_get
#
# Get lists of all sms templates
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
    __PACKAGE__->method_documentation->{ 'sms_templates_get' } = { 
    	summary => 'Get lists of all sms templates',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_templates_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/sms/templates';

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
# sms_templates_post
#
# Create sms template
# 
# @param SmsTemplate $sms_template SmsTemplate model (required)
{
    my $params = {
    'sms_template' => {
        data_type => 'SmsTemplate',
        description => 'SmsTemplate model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sms_templates_post' } = { 
    	summary => 'Create sms template',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub sms_templates_post {
    my ($self, %args) = @_;

    # verify the required parameter 'sms_template' is set
    unless (exists $args{'sms_template'}) {
      croak("Missing the required parameter 'sms_template' when calling sms_templates_post");
    }

    # parse inputs
    my $_resource_path = '/sms/templates';

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
    if ( exists $args{'sms_template'}) {
        $_body_data = $args{'sms_template'};
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

1;
