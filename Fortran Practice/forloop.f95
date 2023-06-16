program cat
implicit none
integer :: n=0,m=1,f=0
integer:: secdrect_num=7
! for loop start  stop increment {do end do}
! do n=1,10,2
!     print"(i1)",n
! end do
! do while(m<20)
!     if(mod(m,2)==0 )then
!         print"(i1)",m 
!         m=m+1
!         !cycle ! cycle==continue
!     end if
!     m=m+1
!     if(m>=10)then
!         exit
!     end if
! end do

! Guessing game
do while(m<4)
    print *,"Enter a number"
    read *,n 
    if(n==secdrect_num)then
        print *,"You won"
        f=1
        exit
    else 
        print*,"Try again"
    end if 
    m=m+1
end do
if(f/=1) then
    print *,"Better luck next time"
end if

    

    

end program cat