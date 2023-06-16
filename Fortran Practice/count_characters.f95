program cat
    implicit none
    character(len=40)::input_string
    integer::i,length,ans
   outer: do
        read *,input_string
        if(input_string=="End_of_names")exit
        length=len_trim(input_string)
        ans=0
        inner: do i=1,length,1
                    if(input_string(i:i)=='a'.or. input_string(i:i)=='A')then
                        ans=ans+1
                    end if
               end do inner
        print*,input_string,ans
            end do outer
            

end program cat