program cat
character(len=20)::first_name,last_name
character(len=40)::full_name
! concatination operator for strings //
first_name="pranav"
last_name="Tambe"
 
print*,trim(first_name)//" "//last_name
! trim to  remove all trailing blank spaces
! adjustl to remove all balnk spaces before a word
! len() to find the length of string 
print*,len(first_name)
print*,first_name(1:)
! (first index:second index ) [both inclusive]
! len_trim counts the number of characters after trim 
print *,len_trim(first_name)


end program cat