class CartesianProduct
    include Enumerable
    
    def initialize(collectionA, collectionB)
        @collectionA = collectionA
        @collectionB = collectionB
    end
    
    def each
        @collectionA.each do |valA|
            @collectionB.each do |valB|
                yield [valA, valB]
            end
        end
    end
end