require 'spec_helper'
require 'locale_identifier'

describe ZendeskAppsTools::LocaleIdentifier do
  it 'should set locale id to en-US when code starts with en-US' do
    expect(ZendeskAppsTools::LocaleIdentifier.new('en-US-x-12').locale_id).to eq('en-US')
  end

  it 'should set locale id to zh-cn when code starts with zh-CN' do
    expect(ZendeskAppsTools::LocaleIdentifier.new('zh-CN-x-12').locale_id).to eq('zh-cn')
  end
end
