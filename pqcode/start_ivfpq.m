for k=[100]
    for coarsek=[64,128,256]
        for nsq=[16,32,64]
            for ker=[128,256,512]
                for w=[8,16,32]
                    fprintf ('IVFADC parament:  k= %d  coarsek=%d  m=%d  ker=%d  w=%d \n',k,coarsek,nsq,ker,w);
                    ivfpq_test('sift',k,coarsek,nsq,ker,w);
                end
            end
        end
    end
end