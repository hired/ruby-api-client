=begin
#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for QwilAPI::ApitokenauthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApitokenauthApi' do
  before do
    # run before each test
    @instance = QwilAPI::ApitokenauthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApitokenauthApi' do
    it 'should create an instact of ApitokenauthApi' do
      expect(@instance).to be_instance_of(QwilAPI::ApitokenauthApi)
    end
  end

  # unit tests for obtain_json_web_token_post
  # API View that receives a POST with a user&#39;s username and password
  # API View that receives a POST with a user&#39;s username and password.&lt;br/&gt;Returns a JSON Web Token that can be used for authenticated requests.
  # @param [Hash] opts the optional parameters
  # @option opts [JSONWebTokenSerializer] :json_web_token_serializer 
  # @return [JSONWebTokenSerializer]
  describe 'obtain_json_web_token_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
