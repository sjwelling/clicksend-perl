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
package WWW::ClickSendClient::VoiceApi;

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
# voice_cancel_all_put
#
# Update all voice messages as cancelled
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'voice_cancel_all_put' } = { 
    	summary => 'Update all voice messages as cancelled',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_cancel_all_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/voice/cancel-all';

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
# voice_cancel_by_message_id_put
#
# Update voice message status as cancelled
# 
# @param string $message_id Your voice message id (required)
{
    my $params = {
    'message_id' => {
        data_type => 'string',
        description => 'Your voice message id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'voice_cancel_by_message_id_put' } = { 
    	summary => 'Update voice message status as cancelled',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_cancel_by_message_id_put {
    my ($self, %args) = @_;

    # verify the required parameter 'message_id' is set
    unless (exists $args{'message_id'}) {
      croak("Missing the required parameter 'message_id' when calling voice_cancel_by_message_id_put");
    }

    # parse inputs
    my $_resource_path = '/voice/{message_id}/cancel';

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
# voice_history_export_get
#
# Export voice history
# 
# @param string $filename Filename to export to (required)
{
    my $params = {
    'filename' => {
        data_type => 'string',
        description => 'Filename to export to',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'voice_history_export_get' } = { 
    	summary => 'Export voice history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_history_export_get {
    my ($self, %args) = @_;

    # verify the required parameter 'filename' is set
    unless (exists $args{'filename'}) {
      croak("Missing the required parameter 'filename' when calling voice_history_export_get");
    }

    # parse inputs
    my $_resource_path = '/voice/history/export';

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
# voice_history_get
#
# Get all voice history
# 
# @param int $date_from Timestamp (from) used to show records by date. (optional)
# @param int $date_to Timestamp (to) used to show records by date (optional)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'date_from' => {
        data_type => 'int',
        description => 'Timestamp (from) used to show records by date.',
        required => '0',
    },
    'date_to' => {
        data_type => 'int',
        description => 'Timestamp (to) used to show records by date',
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
    __PACKAGE__->method_documentation->{ 'voice_history_get' } = { 
    	summary => 'Get all voice history',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_history_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/voice/history';

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
# voice_lang_get
#
# Get all voice languages
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'voice_lang_get' } = { 
    	summary => 'Get all voice languages',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_lang_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/voice/lang';

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
# voice_price_post
#
# Calculate voice price
# 
# @param VoiceMessageCollection $voice_messages VoiceMessageCollection model (required)
{
    my $params = {
    'voice_messages' => {
        data_type => 'VoiceMessageCollection',
        description => 'VoiceMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'voice_price_post' } = { 
    	summary => 'Calculate voice price',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_price_post {
    my ($self, %args) = @_;

    # verify the required parameter 'voice_messages' is set
    unless (exists $args{'voice_messages'}) {
      croak("Missing the required parameter 'voice_messages' when calling voice_price_post");
    }

    # parse inputs
    my $_resource_path = '/voice/price';

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
    if ( exists $args{'voice_messages'}) {
        $_body_data = $args{'voice_messages'};
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
# voice_receipts_get
#
# Get all voice receipts
# 
# @param string $q Your keyword or query. (optional)
# @param int $page Page number (optional, default to 1)
# @param int $limit Number of records per page (optional, default to 10)
{
    my $params = {
    'q' => {
        data_type => 'string',
        description => 'Your keyword or query.',
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
    __PACKAGE__->method_documentation->{ 'voice_receipts_get' } = { 
    	summary => 'Get all voice receipts',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_receipts_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/voice/receipts';

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
    if ( exists $args{'q'}) {
        $query_params->{'q'} = $self->{api_client}->to_query_value($args{'q'});
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
# voice_send_post
#
# Send voice message(s)
# 
# @param VoiceMessageCollection $voice_messages VoiceMessageCollection model (required)
{
    my $params = {
    'voice_messages' => {
        data_type => 'VoiceMessageCollection',
        description => 'VoiceMessageCollection model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'voice_send_post' } = { 
    	summary => 'Send voice message(s)',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub voice_send_post {
    my ($self, %args) = @_;

    # verify the required parameter 'voice_messages' is set
    unless (exists $args{'voice_messages'}) {
      croak("Missing the required parameter 'voice_messages' when calling voice_send_post");
    }

    # parse inputs
    my $_resource_path = '/voice/send';

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
    if ( exists $args{'voice_messages'}) {
        $_body_data = $args{'voice_messages'};
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
