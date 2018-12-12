=begin comment

ClickSend v3 API

 This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::ClickSendClient::FAXApi;

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
# fax_history_get
#
# Get a list of Fax History.
# 
# @param int $date_from Customize result by setting from date (timestsamp) Example: 1457572619. (optional)
# @param int $date_to Customize result by setting to date (timestamp) Example: 1457573000. (optional)
# @param string $q Custom query Example: status:Sent,status_code:201. (optional)
# @param string $order Order result by Example: date_added:desc,list_id:desc. (optional)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'date_from' => {
        data_type => 'int',
        description => 'Customize result by setting from date (timestsamp) Example: 1457572619.',
        required => '0',
    },
    'date_to' => {
        data_type => 'int',
        description => 'Customize result by setting to date (timestamp) Example: 1457573000.',
        required => '0',
    },
    'q' => {
        data_type => 'string',
        description => 'Custom query Example: status:Sent,status_code:201.',
        required => '0',
    },
    'order' => {
        data_type => 'string',
        description => 'Order result by Example: date_added:desc,list_id:desc.',
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
    __PACKAGE__->method_documentation->{ 'fax_history_get' } = { 
    	summary => 'Get a list of Fax History.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_history_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/fax/history';

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
    if ( exists $args{'q'}) {
        $query_params->{'q'} = $self->{api_client}->to_query_value($args{'q'});
    }

    # query params
    if ( exists $args{'order'}) {
        $query_params->{'order'} = $self->{api_client}->to_query_value($args{'order'});
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
# fax_price_post
#
# Calculate Total Price for Fax Messages sent
# 
# @param FaxMessageCollection $fax_message FaxMessageCollection model (required)
{
    my $params = {
    'fax_message' => {
        data_type => 'FaxMessageCollection',
        description => 'FaxMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_price_post' } = { 
    	summary => 'Calculate Total Price for Fax Messages sent',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_price_post {
    my ($self, %args) = @_;

    # verify the required parameter 'fax_message' is set
    unless (exists $args{'fax_message'}) {
      croak("Missing the required parameter 'fax_message' when calling fax_price_post");
    }

    # parse inputs
    my $_resource_path = '/fax/price';

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
    if ( exists $args{'fax_message'}) {
        $_body_data = $args{'fax_message'};
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
# fax_receipts_by_message_id_get
#
# Get a single fax receipt based on message id.
# 
# @param string $message_id ID of the message receipt to retrieve (required)
{
    my $params = {
    'message_id' => {
        data_type => 'string',
        description => 'ID of the message receipt to retrieve',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_receipts_by_message_id_get' } = { 
    	summary => 'Get a single fax receipt based on message id.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_receipts_by_message_id_get {
    my ($self, %args) = @_;

    # verify the required parameter 'message_id' is set
    unless (exists $args{'message_id'}) {
      croak("Missing the required parameter 'message_id' when calling fax_receipts_by_message_id_get");
    }

    # parse inputs
    my $_resource_path = '/fax/receipts/{message_id}';

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
# fax_receipts_get
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
    __PACKAGE__->method_documentation->{ 'fax_receipts_get' } = { 
    	summary => 'Get all delivery receipts',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_receipts_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/fax/receipts';

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
# fax_receipts_post
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
    __PACKAGE__->method_documentation->{ 'fax_receipts_post' } = { 
    	summary => 'Add a delivery receipt',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_receipts_post {
    my ($self, %args) = @_;

    # verify the required parameter 'url' is set
    unless (exists $args{'url'}) {
      croak("Missing the required parameter 'url' when calling fax_receipts_post");
    }

    # parse inputs
    my $_resource_path = '/fax/receipts';

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
# fax_receipts_read_put
#
# Mark delivery receipts as read
# 
# @param DateBefore $date_before DateBefore model (optional)
{
    my $params = {
    'date_before' => {
        data_type => 'DateBefore',
        description => 'DateBefore model',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_receipts_read_put' } = { 
    	summary => 'Mark delivery receipts as read',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_receipts_read_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/fax/receipts-read';

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
# fax_send_post
#
# Send a fax using supplied supported file-types.
# 
# @param FaxMessageCollection $fax_message FaxMessageCollection model (required)
{
    my $params = {
    'fax_message' => {
        data_type => 'FaxMessageCollection',
        description => 'FaxMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'fax_send_post' } = { 
    	summary => 'Send a fax using supplied supported file-types.',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub fax_send_post {
    my ($self, %args) = @_;

    # verify the required parameter 'fax_message' is set
    unless (exists $args{'fax_message'}) {
      croak("Missing the required parameter 'fax_message' when calling fax_send_post");
    }

    # parse inputs
    my $_resource_path = '/fax/send';

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
    if ( exists $args{'fax_message'}) {
        $_body_data = $args{'fax_message'};
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