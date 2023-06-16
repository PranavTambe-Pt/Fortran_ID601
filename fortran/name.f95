program mission_cat
character(len=40)::name,ans
integer::length,p=0,i
read(*,"(a)") name
name=adjustl(name)
name=trim(name)
length=len_trim(name)
ans=name
do i=length,1,-1
    if(name(i:i)==" " .or. name(i:i)==".")then
        p=i
        exit
    end if
end do
if(p/=0)then
   ans=trim(name(p+1:))//" "//adjustl(name(:p))
end if
print *,ans



    
end program mission_cat