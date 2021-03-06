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
package WWW::ClickSendClient::AccountApi;

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
# account_get
#
# Get account information
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'account_get' } = { 
    	summary => 'Get account information',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/account';

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
# account_post
#
# Create a new account
# 
# @param Account $account Account model (required)
{
    my $params = {
    'account' => {
        data_type => 'Account',
        description => 'Account model',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_post' } = { 
    	summary => 'Create a new account',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_post {
    my ($self, %args) = @_;

    # verify the required parameter 'account' is set
    unless (exists $args{'account'}) {
      croak("Missing the required parameter 'account' when calling account_post");
    }

    # parse inputs
    my $_resource_path = '/account';

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
    if ( exists $args{'account'}) {
        $_body_data = $args{'account'};
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
# account_useage_by_subaccount_get
#
# Get account useage by subaccount
# 
# @param int $year Year to filter by (yyyy) (required)
# @param int $month Month to filter by (mm) (required)
{
    my $params = {
    'year' => {
        data_type => 'int',
        description => 'Year to filter by (yyyy)',
        required => '1',
    },
    'month' => {
        data_type => 'int',
        description => 'Month to filter by (mm)',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_useage_by_subaccount_get' } = { 
    	summary => 'Get account useage by subaccount',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_useage_by_subaccount_get {
    my ($self, %args) = @_;

    # verify the required parameter 'year' is set
    unless (exists $args{'year'}) {
      croak("Missing the required parameter 'year' when calling account_useage_by_subaccount_get");
    }

    # verify the required parameter 'month' is set
    unless (exists $args{'month'}) {
      croak("Missing the required parameter 'month' when calling account_useage_by_subaccount_get");
    }

    # parse inputs
    my $_resource_path = '/account/usage/{year}/{month}/subaccount';

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
    if ( exists $args{'year'}) {
        my $_base_variable = "{" . "year" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'year'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'month'}) {
        my $_base_variable = "{" . "month" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'month'});
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
# account_verify_send_put
#
# Send account activation token
# 
# @param AccountVerify $account_verify Account details (required)
{
    my $params = {
    'account_verify' => {
        data_type => 'AccountVerify',
        description => 'Account details',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_verify_send_put' } = { 
    	summary => 'Send account activation token',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_verify_send_put {
    my ($self, %args) = @_;

    # verify the required parameter 'account_verify' is set
    unless (exists $args{'account_verify'}) {
      croak("Missing the required parameter 'account_verify' when calling account_verify_send_put");
    }

    # parse inputs
    my $_resource_path = '/account-verify/send';

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
    if ( exists $args{'account_verify'}) {
        $_body_data = $args{'account_verify'};
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
# account_verify_verify_by_activation_token_put
#
# Verify new account
# 
# @param int $activation_token  (required)
{
    my $params = {
    'activation_token' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'account_verify_verify_by_activation_token_put' } = { 
    	summary => 'Verify new account',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub account_verify_verify_by_activation_token_put {
    my ($self, %args) = @_;

    # verify the required parameter 'activation_token' is set
    unless (exists $args{'activation_token'}) {
      croak("Missing the required parameter 'activation_token' when calling account_verify_verify_by_activation_token_put");
    }

    # parse inputs
    my $_resource_path = '/account-verify/verify/{activation_token}';

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

#
# forgot_password_put
#
# Forgot password
# 
# @param ForgotPassword $forgot_password  (optional)
{
    my $params = {
    'forgot_password' => {
        data_type => 'ForgotPassword',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_password_put' } = { 
    	summary => 'Forgot password',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_password_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/forgot-password';

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
    if ( exists $args{'forgot_password'}) {
        $_body_data = $args{'forgot_password'};
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
# forgot_password_verify_put
#
# Verify forgot password
# 
# @param AccountForgotPasswordVerify $verify_password verifyPassword data (required)
{
    my $params = {
    'verify_password' => {
        data_type => 'AccountForgotPasswordVerify',
        description => 'verifyPassword data',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_password_verify_put' } = { 
    	summary => 'Verify forgot password',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_password_verify_put {
    my ($self, %args) = @_;

    # verify the required parameter 'verify_password' is set
    unless (exists $args{'verify_password'}) {
      croak("Missing the required parameter 'verify_password' when calling forgot_password_verify_put");
    }

    # parse inputs
    my $_resource_path = '/forgot-password/verify';

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
    if ( exists $args{'verify_password'}) {
        $_body_data = $args{'verify_password'};
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
# forgot_username_put
#
# Forgot username
# 
# @param ForgotUsername $forgot_username  (optional)
{
    my $params = {
    'forgot_username' => {
        data_type => 'ForgotUsername',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'forgot_username_put' } = { 
    	summary => 'Forgot username',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub forgot_username_put {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/forgot-username';

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
    if ( exists $args{'forgot_username'}) {
        $_body_data = $args{'forgot_username'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

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
