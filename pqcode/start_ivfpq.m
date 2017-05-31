for k=[100]
    for coarsek=[128]
        for nsq=[32]
            for ker=[512]
                for w=[8]
                    fprintf ('IVFADC parament:  k= %d  coarsek=%d  m=%d  ker=%d  w=%d \n',k,coarsek,nsq,ker,w);
                    ivfpq_test('sift',k,coarsek,nsq,ker,w);
                end
            end
        end
    end
end