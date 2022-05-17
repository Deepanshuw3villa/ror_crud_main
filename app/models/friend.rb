require 'elasticsearch/model'

class Friend < ApplicationRecord
    belongs_to :user
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    # Friend.__elasticsearch__.create_index!
    # Friend.Model                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
    # @friends = Friend.search('foobar').records
end
 