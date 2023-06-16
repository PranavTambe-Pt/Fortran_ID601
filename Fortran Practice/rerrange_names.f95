program cat
    implicit none
    character(len=40)::input_string,last_name,tem_name,first_name
    character(len=80)::full_name
    integer::fl,index,i
    ! to take input of string with spaces use read(*,'(a))
    read (*,'(a)') input_string
    
    tem_name=trim(input_string)
    fl=len_trim(tem_name)
    tem_name=adjustl(tem_name)
    do i=fl,1,-1
        if(input_string(i:i)==" " .or. input_string(i:i)=="." )then
            index=i
            exit
        end if
    end do
    if(index/=0)then
        last_name=input_string(index+1:fl)
        first_name=input_string(1:index)
        full_name=trim(last_name)//" "//first_name
    end if
    print *,full_name
    

end program cat