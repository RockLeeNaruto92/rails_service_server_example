class RumbasController < ApplicationController
  soap_service namespace: 'urn:WashOut', wsdl_style: "document"

  # Simple case
  soap_action "integer_to_string",
              :args   => {number: :integer},
              :return => {value: :string}
  def integer_to_string
    byebug
    value = params[:number].to_s
    render soap: {value: params[:number].to_s}
  end
end
