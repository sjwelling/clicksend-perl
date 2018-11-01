=begin comment

ClickSend v3 REST API

 This is the official [ClickSend](https://clicksend.com) SDK.  *You'll need to create a free account to use the API. You can register [here](https://www.clicksend.com/signup).*  You can use our API documentation along with the SDK. Our API docs can be found [here](https://developers.clicksend.com). 

OpenAPI spec version: 3.1.0
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::SwaggerClient::EmailMarketingApi');

my $api = WWW::SwaggerClient::EmailMarketingApi->new();
isa_ok($api, 'WWW::SwaggerClient::EmailMarketingApi');

#
# allowed_email_address_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->allowed_email_address_get(page => $page, limit => $limit);
}

#
# allowed_email_address_post test
#
{
    my $email_address = undef; # replace NULL with a proper value
    my $result = $api->allowed_email_address_post(email_address => $email_address);
}

#
# cancel_email_campaign_put test
#
{
    my $email_campaign_id = undef; # replace NULL with a proper value
    my $result = $api->cancel_email_campaign_put(email_campaign_id => $email_campaign_id);
}

#
# email_campaign_get test
#
{
    my $email_campaign_id = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_get(email_campaign_id => $email_campaign_id);
}

#
# email_campaign_history_export_get test
#
{
    my $email_campaign_id = undef; # replace NULL with a proper value
    my $date_from = undef; # replace NULL with a proper value
    my $date_to = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_history_export_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to);
}

#
# email_campaign_history_get test
#
{
    my $email_campaign_id = undef; # replace NULL with a proper value
    my $date_from = undef; # replace NULL with a proper value
    my $date_to = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_history_get(email_campaign_id => $email_campaign_id, date_from => $date_from, date_to => $date_to, page => $page, limit => $limit);
}

#
# email_campaign_post test
#
{
    my $email_campaign = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_post(email_campaign => $email_campaign);
}

#
# email_campaign_price_post test
#
{
    my $email_campaign = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_price_post(email_campaign => $email_campaign);
}

#
# email_campaign_put test
#
{
    my $email_campaign_id = undef; # replace NULL with a proper value
    my $result = $api->email_campaign_put(email_campaign_id => $email_campaign_id);
}

#
# email_campaigns_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->email_campaigns_get(page => $page, limit => $limit);
}

#
# send_verification_token_get test
#
{
    my $email_address_id = undef; # replace NULL with a proper value
    my $result = $api->send_verification_token_get(email_address_id => $email_address_id);
}

#
# specific_allowed_email_address_delete test
#
{
    my $email_address_id = undef; # replace NULL with a proper value
    my $result = $api->specific_allowed_email_address_delete(email_address_id => $email_address_id);
}

#
# specific_allowed_email_address_get test
#
{
    my $email_address_id = undef; # replace NULL with a proper value
    my $result = $api->specific_allowed_email_address_get(email_address_id => $email_address_id);
}

#
# verify_allowed_email_address_get test
#
{
    my $email_address_id = undef; # replace NULL with a proper value
    my $activation_token = undef; # replace NULL with a proper value
    my $result = $api->verify_allowed_email_address_get(email_address_id => $email_address_id, activation_token => $activation_token);
}


1;