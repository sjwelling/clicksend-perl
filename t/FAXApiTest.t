=begin comment

ClickSend v3 API

 This is an official SDK for [ClickSend](https://clicksend.com)  Below you will find a current list of the available methods for clicksend.  *NOTE: You will need to create a free account to use the API. You can register [here](https://dashboard.clicksend.com/#/signup/step1/)..* 

OpenAPI spec version: 3.1
Contact: support@clicksend.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by ClickSend Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::ClickSendClient::FAXApi');

my $api = WWW::ClickSendClient::FAXApi->new();
isa_ok($api, 'WWW::ClickSendClient::FAXApi');

#
# fax_history_get test
#
{
    my $date_from = undef; # replace NULL with a proper value
    my $date_to = undef; # replace NULL with a proper value
    my $q = undef; # replace NULL with a proper value
    my $order = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->fax_history_get(date_from => $date_from, date_to => $date_to, q => $q, order => $order, page => $page, limit => $limit);
}

#
# fax_price_post test
#
{
    my $fax_message = undef; # replace NULL with a proper value
    my $result = $api->fax_price_post(fax_message => $fax_message);
}

#
# fax_receipts_by_message_id_get test
#
{
    my $message_id = undef; # replace NULL with a proper value
    my $result = $api->fax_receipts_by_message_id_get(message_id => $message_id);
}

#
# fax_receipts_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->fax_receipts_get(page => $page, limit => $limit);
}

#
# fax_receipts_post test
#
{
    my $url = undef; # replace NULL with a proper value
    my $result = $api->fax_receipts_post(url => $url);
}

#
# fax_receipts_read_put test
#
{
    my $date_before = undef; # replace NULL with a proper value
    my $result = $api->fax_receipts_read_put(date_before => $date_before);
}

#
# fax_send_post test
#
{
    my $fax_message = undef; # replace NULL with a proper value
    my $result = $api->fax_send_post(fax_message => $fax_message);
}


1;