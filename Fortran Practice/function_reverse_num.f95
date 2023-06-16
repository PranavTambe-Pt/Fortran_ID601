program mission_cat
    implicit none
    integer::num,reverse_of,n
    read *,num
    n=reverse_of(num)
    print *,n
end program mission_cat

integer function reverse_of(number)
implicit none
integer,intent(in)::number
integer :: digit,ans=0,n1
n1=number
do
    if(n1==0)exit
    digit=mod(n1,10)
    ans=ans*10+digit
    n1=n1/10
end do
reverse_of=ans
end function reverse_of


