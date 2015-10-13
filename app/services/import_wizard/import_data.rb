module ImportWizard
  class ImportData
    def initialize (source, session)
      @source = source
      @session = session
    end
    
    def import_data
      import_class.new(@session).import_data 
    end
    
    def import_class
        QuickConnectApi
    end
  end
end