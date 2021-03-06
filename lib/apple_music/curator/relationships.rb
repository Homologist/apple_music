# frozen_string_literal: true

module AppleMusic
  class Curator < Resource
    # https://developer.apple.com/documentation/applemusicapi/curator/relationships
    class Curator::Relationships
      attr_reader :playlists

      def initialize(props = {})
        @playlists = Relationship.new(props['playlists']).data
      end
    end

    self.relationships_model = self::Relationships
  end
end
