# --
# Copyright (C) 2008-2009 10gen Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ++

module XGen
  module Mongo
    module Driver

      class DBRef

        attr_reader :parent, :field_name, :db, :namespace, :object_id

        def initialize(parent, field_name, db, namespace, object_id)
          @parent, @field_name, @db, @namespace, @object_id =
            parent, field_name, db, namespace, object_id
        end

        def to_s
          "ns: #{namespace}, id: #{object_id}"
        end

      end
    end
  end
end
