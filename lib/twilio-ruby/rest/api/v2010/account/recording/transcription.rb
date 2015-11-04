##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class TranscriptionList < ListResource
      ##
      # Initialize the TranscriptionList
      def initialize(version, account_sid, recording_sid)
        super
        
        # Path Solution
        @solution = {
            account_sid: account_sid,
            recording_sid: recording_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/Recordings/#{@solution[:recording_sid]}/Transcriptions.json"
      end
      
      ##
      # Reads TranscriptionInstance records from the API as a list.
      def read(self, limit=nil, page_size=nil)
        @version.read(
            limit,
            page_size
        ))
      end
      
      ##
      # Retrieve a single page of TranscriptionInstance records from the API.
      def page(self, page_token=None, page_number=None, page_size=None)
        params = values.of({
            PageToken: page_token,
            Page: page_number,
            PageSize: page_size,
        })
        @version.page(
            self,
            TranscriptionInstance,
            @solution,
            'GET',
            @uri,
            params
        )
      end
      
      ##
      # Constructs a TranscriptionContext
      def get(sid)
        TranscriptionContext.new(@version, sid, @solution)
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.TranscriptionList>'
      end
    end
  end
end