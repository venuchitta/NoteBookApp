module ImportWizard
  class QuickConnectApi
    def initialize (session)
      @session = session
    end
    def import_data
      get_qb_service
    end
    
    private
    def get_qb_service
      @oauth_client = OAuth::AccessToken.new($qb_oauth_consumer, @session[:token], @session[:secret])
      @sales_receipt_service = Quickbooks::Service::SalesReceipt.new
      @sales_receipt_service.access_token = @oauth_client
      @sales_receipt_service.company_id = @session[:realm_id]
      sales_receipts = @sales_receipt_service.query()
      p sales_receipts.entries.length
    end
    
  end
end