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

use_ok('WWW::ClickSendClient::MasterEmailTemplatesApi');

my $api = WWW::ClickSendClient::MasterEmailTemplatesApi->new();
isa_ok($api, 'WWW::ClickSendClient::MasterEmailTemplatesApi');

#
# master_email_template_categories_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->master_email_template_categories_get(page => $page, limit => $limit);
}

#
# master_email_template_category_get test
#
{
    my $category_id = undef; # replace NULL with a proper value
    my $result = $api->master_email_template_category_get(category_id => $category_id);
}

#
# master_email_template_get test
#
{
    my $template_id = undef; # replace NULL with a proper value
    my $result = $api->master_email_template_get(template_id => $template_id);
}

#
# master_email_templates_get test
#
{
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->master_email_templates_get(page => $page, limit => $limit);
}

#
# master_email_templates_in_category_get test
#
{
    my $category_id = undef; # replace NULL with a proper value
    my $page = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $result = $api->master_email_templates_in_category_get(category_id => $category_id, page => $page, limit => $limit);
}


1;
